import 'package:flutter/material.dart';
import 'package:gentest/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: azureGradient,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to GenDrive',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                _buildLoginButton(context, 'Login with Email', Icons.email),
               // _buildLoginButton(context, 'Continue with Google', Icons.google),
                _buildLoginButton(context, 'Continue with Facebook', Icons.facebook),
                //_buildLoginButton(context, 'Continue with LinkedIn', Icons.linkedin),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context, String text, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: AppTheme.primaryColor,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        textStyle: GoogleFonts.lato(fontSize: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

mixin google {
}
