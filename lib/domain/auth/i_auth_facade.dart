import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import '../user/user.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerUser({
    required String? username,
    required String? email,
    required String? password,
  });
  Future<Either<AuthFailure, Unit>> loginUser({
    required String? email,
    required String? password,
  });
  Future<Either<AuthFailure, User>> getUser();
  Future<Either<AuthFailure, User>> postChangedName({
    required String? firstName,
    required String? lastName,
  });
}
