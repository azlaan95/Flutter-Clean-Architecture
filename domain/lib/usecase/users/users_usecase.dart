import 'package:dartz/dartz.dart';
import 'package:azl_domain/base/error_response.dart';
import 'package:azl_domain/model/users/user.dart';
import 'package:azl_domain/model/users/users_response.dart';
import 'package:azl_domain/repository/users/users_repository_type.dart';
import 'package:azl_domain/usecase/users/users_usecase_type.dart';

class UsersUseCase extends UsersUseCaseType {
  UsersUseCase({required this.repository});

  final UsersRepositoryType repository;

  @override
  Future<Either<CodeErrorResponse, User>> getUser(
      {required String userId}) async {
    final result = await repository.getUser(userId: userId);
    return result.fold((errorResponse) {
      return Left(CodeErrorResponse(100, errorResponse.message));
    }, (response) {
      return Right(response);
    });
  }

  @override
  Future<Either<CodeErrorResponse, UsersResponse>> getUsers() async {
    final result = await repository.getUsers();
    return result.fold((errorResponse) {
      return Left(CodeErrorResponse(100, errorResponse.message));
    }, (response) {
      return Right(response);
    });
  }
}
