import 'package:flutter/material.dart';
// import 'package:paxnote/login_page.dart';
import 'package:paxnote/providers/user_provider.dart';
import 'package:paxnote/services/auth_services.dart';
import 'package:provider/provider.dart';
import 'package:paxnote/landing_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  void _checkAuthentication() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('x-auth-token');
    if (token != null && token.isNotEmpty) {
      authService.getUserData(context);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  // restore for authentication
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LandingPage()
        // isLoading
        //     ? const Scaffold(
        //         body: Center(child: CircularProgressIndicator()),
        //       )
        //     : Provider.of<UserProvider>(context).user.token.isEmpty
        //         ? const LoginPage()
        //         : const LandingPage(),
        );
  }
}
