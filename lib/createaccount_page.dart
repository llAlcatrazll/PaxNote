import 'package:flutter/material.dart';
import 'package:paxnote/services/auth_services.dart';

class CreateaccountPage extends StatefulWidget {
  const CreateaccountPage({super.key});

  @override
  State<CreateaccountPage> createState() => _CreateaccountPageState();
}

class _CreateaccountPageState extends State<CreateaccountPage> {
  //
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final AuthService authService = AuthService();

  void signupUser() {
    authService.signUpUser(
        context: context,
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text);
  }

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
            LayoutBuilder(
              builder: (context, constraints) {
                double containerWidth =
                    constraints.maxWidth * 0.9; // 90% of the parent width
                double paddingValue = constraints.maxWidth *
                    0.05; // 5% of the parent width for padding

                return Container(
                  margin: const EdgeInsets.fromLTRB(10, 45, 10, 0),
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  width: containerWidth,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(55, 51, 88, 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(37)),
                    border: Border.all(
                        color: const Color.fromRGBO(48, 45, 81, 1.0)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 31, 31, 31)
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(4, 5), // Changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: paddingValue),
                        child: TextField(
// NAME TEXT FIELD
                          controller: nameController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(123, 120, 145, 1.0),
                              fontFamily: 'RobotoMono',
                              fontWeight: FontWeight.w800,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(
                                    236, 191, 140, 1.0), // Default border color
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(236, 191, 140, 1.0),
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.w800, // Default border color
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 33, // Custom margin
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: paddingValue),
                        child: TextField(
// EMAIL TEXT FIELD
                          controller: emailController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(123, 120, 145, 1.0),
                                fontFamily: 'RobotoMono',
                                fontWeight: FontWeight.w800),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(
                                    236, 191, 140, 1.0), // Default border color
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                          ),
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(236, 191, 140, 1.0),
                              fontFamily: 'RobotoMono',
                              fontWeight:
                                  FontWeight.w800 // Default border color
                              ),
                        ),
                      ),
                      const SizedBox(
                        height: 33, // Custom margin
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: paddingValue),
                        child: TextField(
// PASSWORD TEXTFIELD
                          controller: passwordController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30, 25, 0, 25),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(123, 120, 145, 1.0),
                                fontFamily: 'RobotoMono',
                                fontWeight: FontWeight.w800),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Color.fromRGBO(
                                    236, 191, 140, 1.0), // Default border color
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(21)),
                            ),
                          ),
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(236, 191, 140, 1.0),
                              fontFamily: 'RobotoMono',
                              fontWeight:
                                  FontWeight.w800 // Default border color
                              ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(
              // CUSTOM MARGIN
              height: 33,
            ),
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
// CREATE ACCOUNT BUTTON
                    onPressed: signupUser,
                    child: const Text(
                      'CreateAccount',
                      style: TextStyle(
                          color: Color.fromRGBO(55, 51, 88, 1.0),
                          fontSize: 20,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
// Button Margin
                const SizedBox(
                  // CUSTOM MARGIN
                  height: 25,
                ),
              ],
            ),

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
// CREATE ACCOUNT BUTTON
                    onPressed: () {},
                    child: const Text(
                      'Back',
                      style: TextStyle(
                          color: Color.fromRGBO(55, 51, 88, 1.0),
                          fontSize: 20,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
// Button Margin
                const SizedBox(
                  // CUSTOM MARGIN
                  height: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
