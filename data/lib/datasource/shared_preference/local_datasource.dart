import 'dart:convert';

import 'package:azl_data/utils/method_defination.dart';
import 'package:azl_data/datasource/shared_preference/local_datasource_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDatasource implements LocalDatasourceType {
  static final LocalDatasource _instance = LocalDatasource._internal();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory LocalDatasource() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  LocalDatasource._internal();

  @override
  Future<String?> getString(String key, String? defaultValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return (await sharedPreferences.getString(key) ?? defaultValue);
  }

  @override
  Future<bool?> getBool(String key, bool? defaultValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return (await sharedPreferences.getBool(key) ?? defaultValue);
  }

  @override
  Future<double?> getDouble(String key, double? defaultValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return (await sharedPreferences.getDouble(key) ?? defaultValue);
  }

  @override
  Future<int?> getInt(String key, int? defaultValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return (await sharedPreferences.getInt(key) ?? defaultValue);
  }

  @override
  Future<T?> getObject<T>(String key, FromJson<T> converter) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? stringObj = await sharedPreferences.getString(key);
    if (stringObj != null) {
      return converter(jsonDecode(stringObj) as Map<String, dynamic>);
    } else {
      return null;
    }
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(key, value);
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setDouble(key, value);
  }

  @override
  Future<bool> setInt(String key, int value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setInt(key, value);
  }

  @override
  Future<bool> setObject(String key, Map<String, dynamic> value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(key, jsonEncode(value));
  }

  @override
  Future<bool> setString(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> clearAll() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.clear();
  }

  @override
  Future<bool> clearKey(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(key);
  }
}
