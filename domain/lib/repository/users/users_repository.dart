import 'package:dartz/dartz.dart';
import 'package:azl_domain/base/api_paths.dart';
import 'package:azl_domain/base/app_base_response.dart';
import 'package:azl_domain/base/error_response.dart';
import 'package:azl_domain/model/users/user.dart';
import 'package:azl_domain/model/users/users_response.dart';
import 'package:azl_domain/repository/users/users_repository_type.dart';

class UsersRepository extends UsersRepositoryType {
  UsersRepository({required super.appConfig});

  @override
  Future<Either<ErrorResponse, User>> getUser({required String userId}) async {
    AppBaseResponse response =
        await callGetApi(url: appConfig.baseUrl1, apiPath: ApiPaths.user);
    if (response.success) {
      return Right(User.fromJson(response.response));
    }
    return Left(response.noInternet
        ? const NoConnectionErrorResponse()
        : CodeErrorResponse(response.isException ? 500 : response.responseCode,
            response.response));
  }

  @override
  Future<Either<ErrorResponse, UsersResponse>> getUsers() async {
    AppBaseResponse response =
        await callGetApi(url: appConfig.baseUrl1, apiPath: ApiPaths.user);
    if (response.success) {
      return Right(UsersResponse.fromJson({"users": response.response}));
    }
    return Left(response.noInternet
        ? const NoConnectionErrorResponse()
        : CodeErrorResponse(response.isException ? 500 : response.responseCode,
            response.response));
  }
}
