// session_request.dart
import 'package:flutter/material.dart';

class SessionRequestScreen extends StatelessWidget {
  const SessionRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Session Request')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'School Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Address: 123 Main St, City, State - 123456'),
            const SizedBox(height: 20),
            const Text(
              'Available Session:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('Date: June 15, 2023'),
            const Text('Time: 10:00 AM - 12:00 PM'),
            const SizedBox(height: 30),
            const Text(
              'Submit Your Topics (up to 5)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Topic ${index + 1}',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Session Requested'),
                    content: const Text(
                        'Your session request has been submitted. School will review and respond.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Submit Request'),
            ),
          ],
        ),
      ),
    );
  }
}