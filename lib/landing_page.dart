import 'package:flutter/material.dart';
import 'package:paxnote/events_page.dart';
import 'package:paxnote/profile.dart';
import 'package:paxnote/qr_core.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  final tabs = [const EventsPage(), const ProfilePage(), const QrPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: const Color.fromRGBO(50, 44, 90, 1.0),
        // elevation: 40,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromRGBO(236, 191, 140, 1.0)),

              // backgroundColor: Color.fromRGBO(50, 44, 90, 1.0),
              label: ('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code,
                  color: Color.fromRGBO(236, 191, 140, 1.0)),
              // backgroundColor: Color.fromRGBO(50, 44, 90, 1.0),
              label: ('Qr')),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person, color: Color.fromRGBO(236, 191, 140, 1.0)),
              // backgroundColor: Color.fromRGBO(50, 44, 90, 1.0),
              label: ('Profile')),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
