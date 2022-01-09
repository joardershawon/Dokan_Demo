import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dokan_demo/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dokan_demo/domain/auth/i_auth_facade.dart';
import 'package:dokan_demo/infrastructure/core/api_path.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    await setUserName(username!);
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

    final name = await getUserName();
    print(name);
    final Map data = {"username": name, "email": "$email", "password": "$password"};
    final body = jsonEncode(data);
    final res = await http
        .post(
          Uri.parse(path),
          headers: {"Content-Type": "application/json"},
          body: body,
        )
        .then((value) => json.decode(value.body));

    if (res['token'] != null) {
      print(res['token']);
      await setToken(res['token']);
      return const Right(unit);
    } else {
      return Left(
        AuthFailure.serverError(
          errorText: res['message'],
        ),
      );
    }
  }
}
