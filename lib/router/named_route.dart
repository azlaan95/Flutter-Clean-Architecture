import 'package:azl_clean_sample/router/routes.dart';

class NamedRoute {
  final AppRoute appRoute;
  final String? overrideRouteName;

  String get routeName => '/${overrideRouteName ?? appRoute.name}';

  NamedRoute({
    required this.appRoute,
    this.overrideRouteName,
  });

  @override
  String toString() {
    return 'NamedRoute{route: $appRoute, overrideRouteName: $overrideRouteName}';
  }
}