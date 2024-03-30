import 'package:flutter/material.dart';

import '../shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key, this.base});
  final String? base;

  @override
  State<CounterView> createState() => _CounterView();
}

class _CounterView extends State<CounterView> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base ?? "0") != null) {
      counter = int.parse(widget.base ?? '0');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Statefull Counter',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Increment',
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
            CustomFlatButton(
                text: 'Decrement',
                onPressed: () {
                  if (counter == 0) return;
                  setState(() {
                    counter--;
                  });
                })
          ],
        ),
      ],
    );
  }
}
