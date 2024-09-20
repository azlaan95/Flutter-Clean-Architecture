import 'package:azl_presentation/router/navigation_controller.dart';
import 'package:azl_presentation/router/routes.dart';

class NavigationHelper {
  static void transitionToHome(Map<String, dynamic>? arguments) {
    NavigationController.push(
      Routes.home.routeName,
      arguments: arguments,
      replace: true,
      clean: true,
    );
  }

  static void transitionToHomeSettingsTab(Map<String, dynamic>? arguments) {
    final data = arguments ?? {};
    data["tab_name"] = "/settings";
    transitionToHome(data);
  }

  static void transitionToHomeFaqTab(Map<String, dynamic>? arguments) {
    final data = arguments ?? {};
    data["tab_name"] = "/faq";
    transitionToHome(data);
  }

  static void transitionToError(Map<String, dynamic>? arguments) {
    NavigationController.push(
      Routes.unknown.routeName,
      arguments: arguments,
    );
  }
}
