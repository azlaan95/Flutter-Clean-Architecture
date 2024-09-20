/*
import 'package:azl_data/config/app_config.dart';
import 'package:azl_data/config/app_config_type.dart';
import 'package:azl_data/config/environment.dart';
import 'package:azl_data/di/data_injection.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase_type.dart';
import 'package:get_it/get_it.dart';

class DomainInjection {
  static GetIt getIt = GetIt.instance;

  static void configure(Environment environment, bool enable) {
    getIt.registerFactory<AppConfigType>(
      () => AppConfig(env: environment, enableMock: enable),
    );

    DataInjection.configure(getIt());

    */
/*getIt.registerFactory<TasksRepositoryType>(
      () => TasksRepository(appConfig: getIt()),
    );*//*


    getIt.registerFactory<KanbanUseCaseType>(
      () => KanbanUseCase(
          taskRepository: DataInjection.getIt(),
          sectionsRepository: DataInjection.getIt()),
    );
  }
}
*/
