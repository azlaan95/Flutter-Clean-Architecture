import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource_type.dart';
import 'package:azl_data/di/data_injection.dart';

mixin DatasourceModule {
  /// API/REST Client
  NetworkDatasourceType get apiClient {
    return DataInjection.getIt();
  }

  /// Local Storage
  LocalDatasourceType get sharesPreference {
    return DataInjection.getIt();
  }
}
