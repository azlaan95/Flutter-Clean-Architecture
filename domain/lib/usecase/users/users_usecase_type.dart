import 'package:dartz/dartz.dart';
import 'package:azl_domain/base/error_response.dart';
import 'package:azl_domain/model/users/user.dart';
import 'package:azl_domain/model/users/users_response.dart';

abstract class UsersUseCaseType {
  Future<Either<ErrorResponse, UsersResponse>> getUsers();

  Future<Either<ErrorResponse, User>> getUser({required String userId});
}
