import 'package:flutter/material.dart';
// import 'package:paxnote/providers/user_provider.dart';
import 'package:paxnote/services/auth_services.dart';
import 'package:paxnote/subcomponents/upcomingevents.dart';
import 'package:paxnote/subcomponents/userrecords.dart';
import 'package:paxnote/subcomponents/currentusers.dart';
// import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void signOutUser(BuildContext context) {
    AuthService().signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(73, 66, 108, 1.0)),
        padding: const EdgeInsets.fromLTRB(23, 24, 23, 0),
        child: FractionallySizedBox(
          widthFactor: 1,
          child: SizedBox(
            // color: Colors.amber,
            child: Column(
              children: [
                const Expanded(
                    flex: 1,
                    child: SizedBox(
                      // color: Colors.green,
                      child: CurrentUser(),
                    )),
                const Expanded(
                    flex: 2,
                    child: SizedBox(
                      // color: Colors.green,
                      child: UpcomingEvent(),
                    )),
                const Expanded(flex: 5, child: UserRecords()),
                Expanded(
                    flex: 1,
                    child: Container(
                        // color: Colors.blue,
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
