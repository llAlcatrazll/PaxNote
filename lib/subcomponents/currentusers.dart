import 'package:flutter/material.dart';

class CurrentUser extends StatelessWidget {
  const CurrentUser({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,

      // basically 100% due to the padding set earlier
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(55, 51, 88, 1.0),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Container(
                  color: Colors.green,
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
