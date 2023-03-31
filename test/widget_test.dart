// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:azl_domain/base/app_config_type.dart';
import 'package:azl_domain/repository/users/users_repository.dart';
import 'package:azl_domain/usecase/users/users_usecase.dart';
import 'package:azl_domain/usecase/users/users_usecase_type.dart';
import 'package:azl_clean_sample/config/app_config.dart';
import 'package:azl_clean_sample/environment/environment.dart';

void main() async {
  AppConfigType appConfigType = AppConfig(env: Environment.production());
  UsersUseCaseType useCaseType =
      UsersUseCase(repository: UsersRepository(appConfig: appConfigType));
  final result = await useCaseType.getUsers();
  result.fold((errorResponse) {
    print(errorResponse.message);
  }, (response) {
    (response.users ?? []).forEach((user) {
      print((user.toJson()));
    });
  });
}
