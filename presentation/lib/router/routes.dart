import 'named_route.dart';

enum AppRoute {
  unknown,
  root,
  home,
}

class Routes {
  static NamedRoute get root => NamedRoute(appRoute: AppRoute.root);

  static NamedRoute get unknown => NamedRoute(appRoute: AppRoute.unknown);

  static NamedRoute get home => NamedRoute(appRoute: AppRoute.home);

  static List<NamedRoute> values = [unknown, root, home];
}
