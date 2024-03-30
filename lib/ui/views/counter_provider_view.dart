import 'package:base_web/providers/counter_providert.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key, this.base});

  final String? base;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(base: base),
        child: const _CounterProviderContent());
  }
}

class _CounterProviderContent extends StatelessWidget {
  const _CounterProviderContent();

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Provider Counter',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${counterProvider.counter}',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Increment',
                onPressed: () => counterProvider.increment()),
            CustomFlatButton(
                text: 'Decrement', onPressed: () => counterProvider.decrement())
          ],
        )
      ],
    );
  }
}
