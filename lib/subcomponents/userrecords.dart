import 'package:flutter/material.dart';

const List<String> list = <String>['ACSS', 'CCIS', 'CSG', 'CJC'];

class UserRecords extends StatelessWidget {
  const UserRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: SizedBox(
        // decoration: const BoxDecoration(
        //     // color: Color.fromRGBO(55, 51, 88, 1.0),
        //     borderRadius: BorderRadius.all(Radius.circular(19.0))),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Upcoming Events',
                            style: TextStyle(
                                color: Color.fromRGBO(236, 191, 140, 1.0),
                                fontFamily: 'RobotoMono',
                                letterSpacing: -1.5,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19)),
                                color: Color.fromRGBO(55, 51, 88, 1.0),
                              ),
                              child: const DropdownButtonExample()),
                        ))
                  ],
                )),
            Expanded(
              flex: 9,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(55, 51, 88, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(19.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        dropdownColor: const Color.fromRGBO(55, 51, 88, 1.0),
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        elevation: 16,
        underline: const SizedBox.shrink(),
        style: const TextStyle(color: Colors.deepPurple),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                  color: Color.fromRGBO(236, 191, 140, 1.0),
                  fontFamily: 'RobotoMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          );
        }).toList(),
      ),
    );
  }
}
