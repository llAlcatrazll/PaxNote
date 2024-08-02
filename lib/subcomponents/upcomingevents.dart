import 'package:flutter/material.dart';
import 'package:paxnote/microcomponents/upcomingevent_material.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 460,
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: const UpcomingeventMaterial(),
      ),
    );
  }
}
