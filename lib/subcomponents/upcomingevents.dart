import 'package:flutter/material.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 460,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(55, 51, 88, 1.0),
        ),
        child: const Text('upcomingEvent'),
      ),
    );
  }
}
