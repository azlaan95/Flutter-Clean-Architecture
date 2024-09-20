/*
import 'package:azl_data/config/app_config_type.dart';
import 'package:azl_data/datasource/api_client/network_datasource.dart';
import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource_type.dart';
import 'package:azl_data/repositories/sections/sections_repository.dart';
import 'package:azl_data/repositories/sections/sections_repository_type.dart';
import 'package:azl_data/repositories/tasks/tasks_repository.dart';
import 'package:azl_data/repositories/tasks/tasks_repository_type.dart';
import 'package:get_it/get_it.dart';

class DataInjection {
  static GetIt getIt = GetIt.instance;

  static void configure(AppConfigType appConfig) {
    getIt.registerLazySingleton<NetworkDatasourceType>(
      () => NetworkDatasource(),
    );

    getIt.registerLazySingleton<LocalDatasourceType>(
      () => LocalDatasource(),
    );

    getIt.registerFactory<TasksRepositoryType>(
      () => TasksRepository(appConfig: appConfig),
    );

    getIt.registerFactory<SectionsRepositoryType>(
      () => SectionsRepository(appConfig: appConfig),
    );
  }
}
*/
