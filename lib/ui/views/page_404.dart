import 'package:base_web/router/routes.const.dart';
import 'package:base_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text('Page not found', style: TextStyle(fontSize: 20)),
          CustomFlatButton(
              text: 'Back to main',
              onPressed: () => Navigator.pushNamed(context, statefulPage))
        ],
      ),
    );
  }
}
