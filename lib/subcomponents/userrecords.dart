import 'package:flutter/material.dart';

class UserRecords extends StatelessWidget {
  const UserRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        decoration: const BoxDecoration(color: Colors.red),
        child: const Text('User Records'),
      ),
    );
  }
}
