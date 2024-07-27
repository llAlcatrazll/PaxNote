import 'package:flutter/material.dart';
// import 'package:paxnote/subcomponents/nextevent.dart';
// import 'package:paxnote/subcomponents/upcomingevents.dart';
// import 'package:paxnote/subcomponents/currentusers.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

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
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.cyan,
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.red,
                    )),
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
