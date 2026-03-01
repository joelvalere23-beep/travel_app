import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle logout functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('User Information', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Name: John Doe'),
            Text('Email: johndoe@example.com'),
            SizedBox(height: 40),
            Text('User Preferences', style: TextStyle(fontSize: 24)),
            // Add user preferences options here
            SwitchListTile(
              title: Text('Enable Notifications'),
              value: true,
              onChanged: (bool value) {
                // Handle preferences change
              },
            ),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: false,
              onChanged: (bool value) {
                // Handle preferences change
              },
            ),
          ],
        ),
      ),
    );
  }
}