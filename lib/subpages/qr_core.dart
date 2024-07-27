import 'package:flutter/material.dart';
import 'package:paxnote/subcomponents/qrgenerator.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Profile Page'),
      // ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(73, 66, 108, 1.0)),
        padding: const EdgeInsets.fromLTRB(23, 24, 23, 0),
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                const Expanded(flex: 9, child: QrGenerator()),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
