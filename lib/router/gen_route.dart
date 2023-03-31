import 'package:flutter/material.dart';
import 'package:azl_clean_sample/presentation/splash/splash_page.dart';
import 'package:azl_clean_sample/presentation/users/users_screen.dart';
import 'package:azl_clean_sample/router/routes.dart';

Route<Object>? generateRoute(RouteSettings settings) {
  final namedRoute = settings.name == '/'
      ? Routes.root
      : Routes.values.firstWhere((element) {
          if (settings.name != null) {
            return settings.name! == '/${element.appRoute.name}';
          }
          return false;
        }, orElse: () => Routes.unknown);
  debugPrint(
      '\n=============== (Origin: ${settings.name}) Navigating to: ${namedRoute.toString()}\n with args: ${settings.arguments}');
  switch (namedRoute.appRoute) {
    case AppRoute.unknown:
      return _errorRoute();
    case AppRoute.home:
      return _buildRoute(settings: settings, screen: const UsersScreen());
    case AppRoute.root:
      return _buildRoute(settings: settings, screen: const SplashScreen());
  }
}

Route<Object>? _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('ERROR'),
      ),
    );
  });
}

Route<Object>? _buildRoute(
    {required RouteSettings settings,
    required Widget screen,
    bool fullscreenDialog = false}) {
  return CustomMaterialPageRoute(
    settings: settings,
    fullscreenDialog: fullscreenDialog,
    builder: (context) {
      return screen;
    },
  );
}


class CustomMaterialPageRoute<T> extends MaterialPageRoute<T> {
  @override
  @protected
  bool get hasScopedWillPopCallback {
    return false;
  }

  CustomMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
