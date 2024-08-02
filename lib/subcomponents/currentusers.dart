import 'package:flutter/material.dart';
import 'package:paxnote/providers/user_provider.dart';
import 'package:provider/provider.dart';

class CurrentUser extends StatelessWidget {
  const CurrentUser({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    const namespace = -1.5;
    return FractionallySizedBox(
      widthFactor: 1,

      // basically 100% due to the padding set earlier
      child: SizedBox(
        height: 80,
        // decoration: const BoxDecoration(
        //   color: Color.fromRGBO(55, 51, 88, 1.0),
        // ),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          user.name,
                          style: const TextStyle(
                              fontSize: 35,
                              letterSpacing: namespace,
                              fontWeight: FontWeight.w900,
                              color: Color.fromRGBO(17, 13, 52, 1.0),
                              // foreground: Paint()
                              //   ..style = PaintingStyle.stroke
                              //   ..strokeWidth = 0.1
                              //   ..color = Colors.white,
                              fontFamily: 'RobotoMono'),
                        ),
                      ],
                    ),
                    Text(
                      user.course,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
