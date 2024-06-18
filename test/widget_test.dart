import 'package:azl_domain/di/domain_injection.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase_type.dart';
import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/development/development_env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  AppConfigure.configure(DevelopmentEnvironment.development(),
      enableMock: true);
  KanbanUseCaseType useCaseType = DomainInjection.getIt();

  test(
    "Get Tasks Api Test",
    () async {
      final result = await useCaseType.getTasks();
      result.fold((errorResponse) {
        print(errorResponse.message);
        expect(errorResponse.message, isNotNull);
      }, (response) {
        print(response.length);
        expect(response, isNotNull);
      });
    },
  );
}
