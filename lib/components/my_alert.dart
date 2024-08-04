import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  final String text;
  const MyAlert({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        text,
        style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
      ),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Try again",
            style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
          ),
        )
      ],
    );
  }
}
