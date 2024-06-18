import 'package:flutter/material.dart';
import 'package:kanban_taskmanager/router/navigation_controller.dart';
import 'package:kanban_taskmanager/router/routes.dart';
import 'package:kanban_taskmanager/util/util.dart';

class SplashScreen extends StatelessWidget with ResponsiveMixin {
  const SplashScreen({super.key});

  callSplashDelay() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        NavigationController.push(Routes.home.routeName, replace: true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    initResponsive(context);
    callSplashDelay();
    return Builder(builder: (context) {
      return Center(
        child: SizedBox(
          width: 124.w,
          height: 124.w,
          child: const Text("KanBan Tracker"),
        ),
      );
    });
  }
}
