import 'package:flutter/cupertino.dart';
import 'package:azl_presentation/router/navigation_controller.dart';
import 'package:azl_presentation/router/routes.dart';

extension AppRouter<T extends StatefulWidget> on State<T> {
  void transitionToHomePage() {
    NavigationController.push(Routes.home.routeName, replace: true);
  }

  void pop() {
    Navigator.pop(context);
  }
}
