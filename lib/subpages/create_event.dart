import 'package:flutter/material.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Profile Page'),
      // ),
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
                Expanded(
                    flex: 1,
                    child: Container(
                        // color: Colors.red,
                        )),
                Expanded(
                    flex: 7,
                    child: LayoutBuilder(builder: (context, constraints) {
                      double containerWidth =
                          constraints.maxWidth * 0.9; // 90% of the parent width
                      double paddingValue = constraints.maxWidth *
                          0.05; // 5% of the parent width for padding

                      return Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(55, 51, 88, 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(19))),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: paddingValue),
                                child: TextFormField(
                                  // NAME TEXT FIELD
                                  // controller: nameController,
                                  // onChanged: ,
                                  decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(30, 25, 0, 25),
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
                                        color: Color.fromRGBO(236, 191, 140,
                                            1.0), // Default border color
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
                                        FontWeight.w800, // Default border color
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 33, // Custom margin
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: paddingValue),
                                child: TextFormField(
                                  // NAME TEXT FIELD
                                  // controller: nameController,
                                  // validator: (value) => ,
                                  // onChanged: ,
                                  decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(30, 25, 0, 25),
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
                                        color: Color.fromRGBO(236, 191, 140,
                                            1.0), // Default border color
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
                                        FontWeight.w800, // Default border color
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 33, // Custom margin
                              ),
                            ],
                          ),
                        ),
                        // color: Colors.green,
                      );
                    })),
                Expanded(
                    flex: 1,
                    child: Container(
                        // color: Colors.black,
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
