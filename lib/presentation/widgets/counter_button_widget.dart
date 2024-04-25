import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CounterButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
