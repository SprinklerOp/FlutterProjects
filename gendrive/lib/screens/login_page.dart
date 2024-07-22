import 'package:flutter/material.dart';
import 'package:gendrive/screens/signup_page.dart';
import '../widgets/custom_button.dart';
import '../widgets/form_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161616),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 375, // fixed screen width for mobile
            height: 812, // fixed screen height for mobile
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'Welcome to GenDrive',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                FormInput(
                  label: 'Email',
                  hintText: 'Enter your email',
                  icon: Icons.email,
                ),
                const SizedBox(height: 20),
                FormInput(
                  label: 'Password',
                  hintText: 'Enter your password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    // Add your login logic here
                  },
                  backgroundColor: const Color(0xFF1593E3),
                  textColor: Colors.white,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Continue with Google',
                  onPressed: () {
                    // Add your Google sign-in logic here
                  },
                  backgroundColor: const Color(0xFF4CAF50),
                  textColor: const Color(0xFFD3EBD4),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupPage()),
                    );
                  },
                  child: const Text(
                    'Don\'t have an account? Register',
                    style: TextStyle(color: Color(0xFFBDC1CA)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
