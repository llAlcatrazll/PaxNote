import 'package:flutter/material.dart';
import 'package:paxnote/login_page.dart';
import 'package:paxnote/providers/user_provider.dart';
import 'package:paxnote/services/auth_services.dart';
import 'package:provider/provider.dart';
import 'package:paxnote/landing_page.dart';
import 'package:paxnote/createaccount_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider.of<UserProvider>(context).user.token.isEmpty
          ? const LoginPage()
          : const LandingPage(),
      // LoginPage(),
    );
  }
}
