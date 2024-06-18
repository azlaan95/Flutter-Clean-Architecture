import 'package:flutter/cupertino.dart';
import 'package:kanban_taskmanager/router/navigation_controller.dart';
import 'package:kanban_taskmanager/router/routes.dart';

extension AppRouter<T extends StatefulWidget> on State<T> {
  void transitionToHomePage() {
    NavigationController.push(Routes.home.routeName, replace: true);
  }

  void pop() {
    Navigator.pop(context);
  }
}
