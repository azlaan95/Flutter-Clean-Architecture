import 'package:azl_domain/base/app_config_type.dart';
import 'package:azl_domain/di/validator_module.dart';
import 'package:azl_domain/repository/users/users_repository.dart';
import 'package:azl_domain/usecase/users/users_usecase.dart';
import 'package:azl_domain/usecase/users/users_usecase_type.dart';

mixin UseCaseModule on ValidatorModule {
  UsersUseCaseType getUserUserCase({required AppConfigType appConfigType}) {
    return UsersUseCase(repository: UsersRepository(appConfig: appConfigType));
  }
}
