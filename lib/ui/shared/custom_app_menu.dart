import 'package:base_web/locator.dart';
import 'package:base_web/router/routes.const.dart';
import 'package:base_web/services/navigation_service.dart';
import 'package:base_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? const _DesktopMenu()
            : const _MobileMenu();
      },
    );
  }
}

class _DesktopMenu extends StatelessWidget {
  const _DesktopMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Statefull Counter',
              //onPressed: () => Navigator.pushNamed(context, statefulPage),
              onPressed: () =>
                  locator<NavigationService>().navigateTo(statefulPage),
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: 'Provicer Counter',
              //onPressed: () => Navigator.pushNamed(context, providerPage),
              onPressed: () =>
                  locator<NavigationService>()..navigateTo(providerPage),
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: 'Another page',
              //onPressed: () => Navigator.pushNamed(context, 'unknownPage'),
              onPressed: () =>
                  locator<NavigationService>()..navigateTo(unknownPage),
              color: Colors.black)
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
              text: 'Statefull Counter',
              //onPressed: () => Navigator.pushNamed(context, statefulPage),
              onPressed: () =>
                  locator<NavigationService>().navigateTo(statefulPage),
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: 'Provicer Counter',
              //onPressed: () => Navigator.pushNamed(context, providerPage),
              onPressed: () =>
                  locator<NavigationService>()..navigateTo(providerPage),
              color: Colors.black),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: 'Another page',
              //onPressed: () => Navigator.pushNamed(context, 'unknownPage'),
              onPressed: () =>
                  locator<NavigationService>()..navigateTo(unknownPage),
              color: Colors.black)
        ],
      ),
    );
  }
}
