// services_screen.dart
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Services')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ExpansionTile(
              title: const Text('Portable Lab'),
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Our portable labs provide hands-on science experiments for students from classes 9 to 12, covering Physics, Chemistry, Biology, and Mathematics.',
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Guest Speaker'),
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Connect with industry experts and professionals who can share their knowledge and experience with your students.',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}