import 'package:flutter/material.dart';

import '../widgets/counter_button_widget.dart';

class CounterActionsComponent extends StatelessWidget {
  final Function() onIncrement;
  final Function() onDecrement;
  const CounterActionsComponent({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CounterButton(onPressed: onIncrement, title: 'Add'),
        CounterButton(
          onPressed: onDecrement,
          title: 'Minus',
        ),
      ],
    );
  }
}
