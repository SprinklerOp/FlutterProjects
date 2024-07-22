import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatefulWidget {
  @override
  _TermsAndConditionsPageState createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  bool googleDriveBackup = false;
  bool googlePhotosBackup = false;
  bool socialMediaAccess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please read and accept our terms and conditions before proceeding.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Backup Options',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SwitchListTile(
                title: Text('Backup to Google Drive'),
                value: googleDriveBackup,
                onChanged: (value) {
                  setState(() {
                    googleDriveBackup = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Backup to Google Photos'),
                value: googlePhotosBackup,
                onChanged: (value) {
                  setState(() {
                    googlePhotosBackup = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Access Social Media Platforms'),
                value: socialMediaAccess,
                onChanged: (value) {
                  setState(() {
                    socialMediaAccess = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the acceptance and proceed to the next page
                  },
                  child: Text('Accept and Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
