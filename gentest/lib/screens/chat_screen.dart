// lib/screens/chat_screen.dart

import 'package:flutter/material.dart';
import 'package:gentest/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with AI'),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: azureGradient,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildChatBubble('Hello! How can I assist you today?', AppTheme.gradientStart, Alignment.centerLeft),
                  _buildChatBubble('I need help with my files.', AppTheme.gradientEnd, Alignment.centerRight),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatBubble(String message, Color color, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          message,
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ),
    );
  }
}

