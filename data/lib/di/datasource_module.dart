import 'package:azl_data/datasource/api_client/network_datasource.dart';
import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource_type.dart';

mixin DatasourceModule {
  /// API/REST Client
  NetworkDatasourceType get apiClient {
    return NetworkDatasource();
  }
  /// Local Storage
  LocalDatasourceType get sharesPreference {
    return LocalDatasource();
  }
}
