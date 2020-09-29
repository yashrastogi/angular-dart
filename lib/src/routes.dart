import 'package:angular_router/angular_router.dart';
import 'hero_list_component.template.dart' as hero_list_template;

class RoutePaths {
  static final heroes = RoutePath(path: 'heroes');
}

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    heroes,
  ];
}
