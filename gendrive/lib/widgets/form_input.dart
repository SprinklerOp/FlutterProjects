import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final IconData icon;

  const FormInput({
    required this.label,
    required this.hintText,
    this.obscureText = false,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon, color: Colors.white),
            filled: true,
            fillColor: Colors.grey[800],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(color: Colors.grey[500]),
          ),
        ),
      ],
    );
  }
}
