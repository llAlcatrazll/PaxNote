import 'package:flutter/material.dart';
import 'package:paxnote/subcomponents/userchart.dart';
import 'package:paxnote/subcomponents/userrecords.dart';
import 'package:paxnote/subcomponents/currentusers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Profile Page'),
      // ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(73, 66, 108, 1.0)),
        child: Center(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(23, 24, 23, 0),
              child: Column(
                children: const [CurrentUser(), UserChart(), UserRecords()],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
