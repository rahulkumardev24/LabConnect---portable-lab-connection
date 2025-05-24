// speaker_register.dart
import 'package:flutter/material.dart';

class SpeakerRegisterScreen extends StatelessWidget {
  const SpeakerRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Speaker Registration'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Student'),
              Tab(text: 'Self-Employed'),
              Tab(text: 'Corporate'),
              Tab(text: 'Other'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SpeakerRegistrationForm('Student'),
            SpeakerRegistrationForm('Self-Employed'),
            SpeakerRegistrationForm('Corporate Professional'),
            SpeakerRegistrationForm('Other Professional'),
          ],
        ),
      ),
    );
  }
}

class SpeakerRegistrationForm extends StatelessWidget {
  final String speakerType;

  const SpeakerRegistrationForm(this.speakerType, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Register as $speakerType',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text('Profile Photo'),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Upload Photo'),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Full Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Date of Birth',
              border: OutlineInputBorder(),
            ),
            readOnly: true,
            onTap: () async {
              // Show date picker
            },
          ),
          const SizedBox(height: 15),
          DropdownButtonFormField(
            items: ['Male', 'Female', 'Other']
                .map((gender) => DropdownMenuItem(
              value: gender,
              child: Text(gender),
            ))
                .toList(),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'Gender',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Highest Qualification',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'University/Institution',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Year of Completion',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Government ID Number',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          const Text('Address'),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Street Address',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          DropdownButtonFormField(
            items: ['State 1', 'State 2', 'State 3']
                .map((state) => DropdownMenuItem(
              value: state,
              child: Text(state),
            ))
                .toList(),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'State',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'City',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Pincode',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          const Text('Upload Documents'),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Upload Resume'),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Upload Video Resume'),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'YouTube Link (if any)',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'LinkedIn Profile (if any)',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Verification will be done by admin'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit Registration'),
          ),
        ],
      ),
    );
  }
}