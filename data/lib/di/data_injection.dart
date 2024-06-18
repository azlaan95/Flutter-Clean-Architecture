import 'package:azl_data/datasource/api_client/network_datasource.dart';
import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource_type.dart';
import 'package:get_it/get_it.dart';

class DataInjection {
  static GetIt getIt = GetIt.instance;

  static void configure() {
    getIt.registerLazySingleton<NetworkDatasourceType>(
      () => NetworkDatasource(),
    );

    getIt.registerLazySingleton<LocalDatasourceType>(
      () => LocalDatasource(),
    );
  }
}
