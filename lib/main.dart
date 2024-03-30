import 'package:base_web/locator.dart';
import 'package:base_web/router/router.dart';
import 'package:base_web/router/routes.const.dart';
import 'package:base_web/services/navigation_service.dart';
import 'package:base_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

//import 'router/route_generator.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      initialRoute: defaultPage,
      //onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
