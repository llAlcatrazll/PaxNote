import 'package:flutter/material.dart';
import 'package:paxnote/providers/user_provider.dart';
import 'package:paxnote/services/auth_services.dart';
import 'package:paxnote/subcomponents/userchart.dart';
import 'package:paxnote/subcomponents/userrecords.dart';
import 'package:paxnote/subcomponents/currentusers.dart';
import 'package:provider/provider.dart';

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
    final user = Provider.of<UserProvider>(context).user;
    print("User email in ProfilePage: ${user.email}");
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(73, 66, 108, 1.0)),
        child: Center(
          child: Column(
            children: [
              Text(user.email),
              Text(user.password),
              const Text('asdasdasd'),
              Text(user.name),
              Container(
                margin: const EdgeInsets.fromLTRB(23, 24, 23, 0),
                child: Column(
                  children: [
                    const CurrentUser(),
                    const UserChart(),
                    const UserRecords(),
                    Container(
                      height: 60,
                      width: 270,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(73, 66, 108, 1.0),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 31, 31, 31)
                                  .withOpacity(0.5),
                              offset: const Offset(0, 4),
                              spreadRadius: 1,
                              blurRadius: 2,
                            ),
                          ],
                          border: Border.all(
                            width: 3,
                            color: const Color.fromRGBO(48, 45, 81, 1.0),
                          )),
                      child: TextButton(
                        onPressed: () {
                          signOutUser(context);
                        },
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                              color: Color.fromRGBO(236, 217, 193, 1.0),
                              fontSize: 20,
                              fontFamily: 'RobotoMono',
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
