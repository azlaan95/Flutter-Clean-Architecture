import 'package:flutter/material.dart';

class NavigationController {
  static final globalNavigatorKey = GlobalKey<NavigatorState>();

  /// Returns value from pop if exists.
  /// [clean] is true to remove all back stacks after pushing
  /// [replace] is true to replace the current route by new route
  ///
  static Future<T?>? push<T extends Object>(
      String route, {
        dynamic arguments,
        bool replace = false,
        bool clean = false,
      }) async {
    if (clean) {
      return globalNavigatorKey.currentState?.pushNamedAndRemoveUntil(
        route,
            (_) => false,
        arguments: arguments,
      );
    }

    if (replace) {
      return globalNavigatorKey.currentState?.pushReplacementNamed(
        route,
        arguments: arguments,
      );
    }

    return globalNavigatorKey.currentState?.pushNamed(
      route,
      arguments: arguments,
    );
  }

  static void pop<T extends Object>({T? result}){
    globalNavigatorKey.currentState?.pop(result);
  }
}