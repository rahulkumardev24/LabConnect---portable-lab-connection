// event_promotion.dart
import 'package:flutter/material.dart';

class EventPromotionScreen extends StatelessWidget {
  const EventPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Promotion')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Event Poster',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset('assets/event_poster.png', height: 300),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Science Workshop',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('School: ABC Public School'),
                        Text('Address: 123 Main St, City, State'),
                        SizedBox(height: 10),
                        Text('Topic: Future of Renewable Energy'),
                        Text('Speaker: Dr. Jane Smith'),
                        Text('Date: June 15, 2023'),
                        Text('Time: 10:00 AM - 12:00 PM'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download),
              label: const Text('Download Poster'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Share Event',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.share, size: 30),
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.email, size: 30),
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.message, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'After Session Completion',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text('Upload Event Photos (3-5)'),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Select Photos'),
            ),
            const SizedBox(height: 20),
            const Text('Feedback'),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your feedback about the session',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 15),
            const Text('Rate the School'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  color: index < 4 ? Colors.amber : Colors.grey,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}