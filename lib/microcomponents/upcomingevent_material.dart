import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpcomingeventMaterial extends StatelessWidget {
  const UpcomingeventMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(

          // color: Color.fromRGBO(55, 51, 88, 1.0),
          borderRadius: BorderRadius.all(Radius.circular(19.0))),
      child: Row(
        children: [
          Expanded(
              flex: 7,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(55, 51, 88, 1.0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(19.0),
                        bottomLeft: Radius.circular(19.0))),
              )),
          Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(236, 191, 140, 1.0),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(19.0),
                        bottomRight: Radius.circular(19.0))),
              )),
        ],
      ),
    );
  }
}
