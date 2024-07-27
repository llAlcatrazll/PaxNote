import 'package:flutter/material.dart';

class UserChart extends StatelessWidget {
  const UserChart({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        decoration: const BoxDecoration(color: Colors.red),
        child: const Text('UserChart'),
      ),
    );
  }
}
