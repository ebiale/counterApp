import 'package:base_web/ui/views/counter_view.dart';
import 'package:base_web/ui/views/counter_provider_view.dart';
import 'package:base_web/ui/views/page_404.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'routes.const.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case statefulPage:
        return _fadeRoute(const CounterView(), statefulPage);
      case providerPage:
        return _fadeRoute(const CounterProviderView(), providerPage);
      default:
        return _fadeRoute(const Page404(), unknownPage);
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                linearTransition: true,
                child: child));
  }
}
