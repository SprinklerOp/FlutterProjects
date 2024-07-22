import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GenDrive'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings screen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dashboard with recent activities
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Dashboard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Quick access to drives and social media accounts
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildQuickAccessItem(Icons.folder, 'Drive'),
                  _buildQuickAccessItem(Icons.photo, 'Photos'),
                  _buildQuickAccessItem(Icons.account_circle, 'Social Media'),
                ],
              ),
            ),
            // Navigation bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavBarItem(Icons.home, 'Home'),
                  _buildNavBarItem(Icons.chat, 'Chat'),
                  _buildNavBarItem(Icons.image, 'Images'),
                  _buildNavBarItem(Icons.video_library, 'Videos'),
                  _buildNavBarItem(Icons.description, 'Documents'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 48),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildNavBarItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 32),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}

