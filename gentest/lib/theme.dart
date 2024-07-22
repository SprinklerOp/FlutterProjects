import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF0077B6);
  static const Color secondaryColor = Color(0xFF0096C7);
  static const Color gradientStart = Color(0xFF90E0EF);
  static const Color gradientEnd = Color(0xFF0077B6);



  static ThemeData get themeData {
    return ThemeData(
      primaryColor: primaryColor,
      hintColor: secondaryColor,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}

const LinearGradient azureGradient = LinearGradient(
  colors: [AppTheme.gradientStart, AppTheme.gradientEnd],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
