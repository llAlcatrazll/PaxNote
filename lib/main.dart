import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(73, 66, 108, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  width: 350,
                ),
              ),
            ),

// INPUT TEXT FIELD
            Container(
              margin: const EdgeInsets.fromLTRB(10, 45, 10, 0),
              height: 320,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(55, 51, 88, 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(37)),
                border:
                    Border.all(color: const Color.fromRGBO(48, 45, 81, 1.0)),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 31, 31, 31).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(4, 5), // changes position of shadow
                  ),
                ],
              ),
// EMAIL INPUT
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 30, 0, 30),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(123, 120, 145, 1.0)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21))),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(236, 191, 140,
                                    1.0)), // Default border color
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                          )),
                    ),
                  ),
                  SizedBox(
                    // CUSTOM MARGIN
                    height: 33,
                  ),
// PASSWORD INPUT
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 30, 0, 30),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(123, 120, 145, 1.0)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(236, 191, 140,
                                    1.0)), // Default border color
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                          )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              // CUSTOM MARGIN
              height: 33,
            ),
// Buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 270,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(236, 191, 140, 1.0),
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
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Color.fromRGBO(55, 51, 88, 1.0),
                          fontSize: 20,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                const SizedBox(
                  // CUSTOM MARGIN
                  height: 33,
                ),
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
                    onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
