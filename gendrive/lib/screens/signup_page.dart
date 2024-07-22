import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/form_input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool emailNotifications = false;
  bool smsNotifications = false;

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
                  'GenDrive Signup',
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
                FormInput(
                  label: 'Confirm Password',
                  hintText: 'Confirm your password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Signup',
                  onPressed: () {
                    // Add your signup logic here
                  },
                  backgroundColor: const Color(0xFF1593E3),
                  textColor: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Setup Your Preferences',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Notification Preferences',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Lexend',
                  ),
                ),
                SwitchListTile(
                  title: const Text(
                    'Email Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: emailNotifications,
                  onChanged: (value) {
                    setState(() {
                      emailNotifications = value;
                    });
                  },
                  activeColor: const Color(0xFF1593E3),
                ),
                SwitchListTile(
                  title: const Text(
                    'SMS Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: smsNotifications,
                  onChanged: (value) {
                    setState(() {
                      smsNotifications = value;
                    });
                  },
                  activeColor: const Color(0xFF1593E3),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Already have an account? Login',
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
