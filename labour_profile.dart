import 'package:flutter/material.dart';
import '../models/labour.dart';

class LabourProfile extends StatelessWidget {
  final Labour labour;

  const LabourProfile({Key? key, required this.labour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${labour.name} Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labour.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Skill: ${labour.skill}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Availability: ${labour.isAvailable ? "Available" : "Not Available"}',
              style: TextStyle(
                fontSize: 18,
                color: labour.isAvailable ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Location: (${labour.latitude}, ${labour.longitude})',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Add contact or booking logic here
              },
              icon: Icon(Icons.phone),
              label: Text('Contact Labour'),
            ),
          ],
        ),
      ),
    );
  }
}
