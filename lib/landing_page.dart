import 'package:flutter/material.dart';
import 'package:paxnote/subpages/create_event.dart';
import 'package:paxnote/subpages/events_page.dart';
import 'package:paxnote/subpages/profile.dart';
import 'package:paxnote/subpages/qr_core.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 2;
  final tabs = [
    const EventsPage(),
    const CreateEvent(),
    const QrPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          tabs[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 65,
              margin: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(50, 44, 90, 1.0),
                  border: Border.all(
                      width: 4, color: const Color.fromRGBO(47, 43, 77, 1.0)),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.my_library_books_sharp,
                        color: Color.fromRGBO(236, 191, 140, 1.0), size: 35),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.event,
                        color: Color.fromRGBO(236, 191, 140, 1.0), size: 35),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.qr_code,
                        color: Color.fromRGBO(236, 191, 140, 1.0), size: 35),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.person,
                        color: Color.fromRGBO(236, 191, 140, 1.0), size: 35),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
