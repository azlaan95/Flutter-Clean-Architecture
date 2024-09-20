import 'package:azl_data/config/app_config.dart';
import 'package:azl_data/config/app_config_type.dart';
import 'package:azl_data/config/environment.dart';
import 'package:azl_data/datasource/api_client/network_datasource.dart';
import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource_type.dart';
import 'package:azl_data/repositories/sections/sections_repository.dart';
import 'package:azl_data/repositories/tasks/tasks_repository.dart';
import 'package:azl_domain/repository/sections_repository_type.dart';
import 'package:azl_domain/repository/tasks_repository_type.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase_type.dart';
import 'package:get_it/get_it.dart';

class AppConfigure {
  static GetIt getIt = GetIt.instance;

  static configure(Environment environment, {bool enableMock = false}) {
    getIt.registerFactory<AppConfigType>(
      () => AppConfig(env: environment, enableMock: enableMock),
    );

    getIt.registerLazySingleton<NetworkDatasourceType>(
      () => NetworkDatasource(),
    );

    getIt.registerLazySingleton<LocalDatasourceType>(
      () => LocalDatasource(),
    );

    getIt.registerFactory<TasksRepositoryType>(
      () => TasksRepository(appConfig: getIt(), apiClient: getIt()),
    );

    getIt.registerFactory<SectionsRepositoryType>(
      () => SectionsRepository(appConfig: getIt(), apiClient: getIt()),
    );

    getIt.registerFactory<KanbanUseCaseType>(
      () => KanbanUseCase(taskRepository: getIt(), sectionsRepository: getIt()),
    );
  }
}
