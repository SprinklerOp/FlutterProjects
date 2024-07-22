// lib/main.dart

import 'package:flutter/material.dart';
import 'package:gentest/screens/chat_screen.dart';
import 'package:gentest/screens/home_screen.dart';
import 'package:gentest/screens/login_screen.dart';
import 'package:gentest/screens/splash_screen.dart';
import 'package:gentest/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GenDriveApp());
}

class GenDriveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add providers for state management
      ],
      child: MaterialApp(
        title: 'GenDrive',
        theme: AppTheme.themeData,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
          '/chat': (context) => ChatScreen(),
        },
      ),
    );
  }
}
