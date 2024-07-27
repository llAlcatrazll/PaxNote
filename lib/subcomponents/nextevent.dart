import 'package:flutter/material.dart';

class NextEvent extends StatelessWidget {
  const NextEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      // basically 100% due to the padding set earlier
      child: Container(
        height: 150,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(55, 51, 88, 1.0),
        ),
        child: const Text('Next Event'),
      ),
    );
  }
}
