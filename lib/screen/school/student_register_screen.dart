// student_register.dart
import 'package:flutter/material.dart';

class StudentRegisterScreen extends StatelessWidget {
  const StudentRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Student Registration'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Individual'),
              Tab(text: 'Bulk Upload'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SingleStudentRegistration(),
            BulkStudentRegistration(),
          ],
        ),
      ),
    );
  }
}

class SingleStudentRegistration extends StatelessWidget {
  const SingleStudentRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text('Student Photo'),
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
          DropdownButtonFormField(
            items: ['Class 9', 'Class 10', 'Class 11', 'Class 12']
                .map((cls) => DropdownMenuItem(
              value: cls,
              child: Text(cls),
            ))
                .toList(),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'Class',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          DropdownButtonFormField(
            items: ['Section A', 'Section B', 'Section C']
                .map((section) => DropdownMenuItem(
              value: section,
              child: Text(section),
            ))
                .toList(),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'Section',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Roll Number',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email (if any)',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Phone Number (if any)',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Address',
              border: OutlineInputBorder(),
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Nationality',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Register Student'),
          ),
        ],
      ),
    );
  }
}

class BulkStudentRegistration extends StatelessWidget {
  const BulkStudentRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bulk Student Registration',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Download the template, fill student details and upload',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Download Template'),
            ),
            const SizedBox(height: 20),
            const Text('OR'),
            const SizedBox(height: 20),
            const Text('Use Google Form'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Open Google Form'),
            ),
          ],
        ),
      ),
    );
  }
}