import 'package:azl_data/utils/method_defination.dart';

abstract class LocalDatasourceType {
  Future<String?> getString(String key, String? defaultValue);

  Future<int?> getInt(String key, int? defaultValue);

  Future<bool?> getBool(String key, bool? defaultValue);

  Future<double?> getDouble(String key, double? defaultValue);

  Future<T?> getObject<T>(String key, FromJson<T> converter);

  Future<bool> setString(String key, String value);

  Future<bool> setInt(String key, int value);

  Future<bool> setBool(String key, bool value);

  Future<bool> setDouble(String key, double value);

  Future<bool> setObject(String key, Map<String, dynamic> value);

  Future<bool> clearKey(String key);

  Future<bool> clearAll();
}
