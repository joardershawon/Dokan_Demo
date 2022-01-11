import 'dart:convert';

import 'package:dokan_demo/domain/user/user.dart';
import 'package:http/http.dart' as http;

import 'package:dokan_demo/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dokan_demo/domain/auth/i_auth_facade.dart';
import 'package:dokan_demo/infrastructure/core/api_path.dart';
import 'package:injectable/injectable.dart';

import 'helper/shared_pref.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> registerUser({
    required String? username,
    required String? email,
    required String? password,
  }) async {
    const path = ApiPath.regUrl;
    final Map data = {"username": username, "email": email, "password": password};
    final body = jsonEncode(data);
    final res = await http
        .post(
          Uri.parse(path),
          headers: {"Content-Type": "application/json"},
          body: body,
        )
        .then((value) => json.decode(value.body));

    if (res['code'] == 200) {
      return const Right(unit);
    } else {
      return Left(
        AuthFailure.serverError(
          errorText: res['message'],
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginUser({required String? email, required String? password}) async {
    const path = ApiPath.loginUrl;

    final Map data = {"username": email, "password": "$password"};
    final body = jsonEncode(data);
    final res = await http
        .post(
          Uri.parse(path),
          headers: {"Content-Type": "application/json"},
          body: body,
        )
        .then((value) => json.decode(value.body));

    if (res['token'] != null) {
      await resetPrefs().then(
        (value) async => await setToken(res['token']).then(
          (value) async => await setEmail(
            res['user_email'],
          ),
        ),
      );

      return const Right(unit);
    } else {
      return Left(
        AuthFailure.serverError(
          errorText: res['message'],
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, User>> getUser() async {
    const path = ApiPath.userUrl;
    final token = await getToken();
    final email = await getEmail();

    if (!token.contains('not found')) {
      final res = await http.get(Uri.parse(path), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }).then(
        (value) => json.decode(value.body),
      );

      if (res['code'] == null) {
        var x = User.fromJson(res);
        x.email = email;
        return Right(x);
      } else {
        return Left(AuthFailure.serverError(errorText: res["message"]));
      }
    } else {
      return const Left(AuthFailure.serverError(errorText: 'Something Bad happened'));
    }
  }

  @override
  Future<Either<AuthFailure, User>> postChangedName({
    required String? firstName,
    required String? lastName,
  }) async {
    const path = ApiPath.userUrl;
    final token = await getToken();
    final Map data = {"first_name": firstName, "last_name": lastName};
    final body = jsonEncode(data);
    if (!token.contains('not found')) {
      final res = await http
          .post(
            Uri.parse(path),
            headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            },
            body: body,
          )
          .then(
            (value) => json.decode(value.body),
          );

      if (res['code'] == null) {
        final x = User.fromJson(res);
        print(x);
        return Right(x);
      } else {
        return Left(AuthFailure.serverError(errorText: res["message"]));
      }
    } else {
      return const Left(AuthFailure.serverError(errorText: 'Something Bad happened'));
    }
  }
}
