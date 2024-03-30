import 'package:fluro/fluro.dart';

import 'package:base_web/router/routes.const.dart';
import 'package:base_web/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(defaultPage,
        handler: counterHandler, transitionType: TransitionType.none);

    router.define(statefulPage,
        handler: counterHandler, transitionType: TransitionType.none);
    router.define('$statefulPage/:base',
        handler: counterHandler, transitionType: TransitionType.none);

    router.define(providerPage,
        handler: counterProviderHandler, transitionType: TransitionType.none);

    router.notFoundHandler = pageNotFound;
  }
}
