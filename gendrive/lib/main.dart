import 'package:flutter/material.dart';
import 'package:gendrive/screens/terms_condition_page.dart';
import 'screens/login_page.dart';
import 'screens/signup_page.dart';


void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/terms': (context) => TermsAndConditionsPage(),
      },
    );
  }
}
