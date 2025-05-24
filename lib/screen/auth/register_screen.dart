// register_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatelessWidget {
  final String userType;

  const RegisterScreen({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$userType Registration')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (userType == 'School')
              _buildSchoolRegistrationForm()
            else
              _buildSpeakerRegistrationForm(),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSchoolRegistrationForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'School Name',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 15),
        const Text('School Photo'),
        const SizedBox(height: 5),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Upload Photo'),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Affiliation Board',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Affiliation Number', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Medium', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Email', border: OutlineInputBorder()),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 15),
        const Text('Principal Details'),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Principal Name', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        const Text('Principal Photo'),
        const SizedBox(height: 5),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Upload Photo'),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Principal Email', border: OutlineInputBorder()),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Principal Contact', border: OutlineInputBorder()),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 15),
        const Text('Address'),
        const SizedBox(height: 10),
        DropdownButtonFormField(
          items: ['State 1', 'State 2', 'State 3']
              .map((state) => DropdownMenuItem(
            value: state,
            child: Text(state),
          ))
              .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(
              labelText: 'State', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        DropdownButtonFormField(
          items: ['District 1', 'District 2', 'District 3']
              .map((district) => DropdownMenuItem(
            value: district,
            child: Text(district),
          ))
              .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(
              labelText: 'District', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Pincode', border: OutlineInputBorder()),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        const SizedBox(height: 15),
        const Text('Affiliation Certificate'),
        const SizedBox(height: 5),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Upload Certificate'),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Enter CAPTCHA', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Text('CAPTCHA: '),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text('A7B9C'),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSpeakerRegistrationForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Full Name', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Date of Birth', border: OutlineInputBorder()),
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
              labelText: 'Gender', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Highest Qualification', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'University', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Year of Completion', border: OutlineInputBorder()),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Phone Number', border: OutlineInputBorder()),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Email', border: OutlineInputBorder()),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Government ID Number', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        const Text('Address'),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Street Address', border: OutlineInputBorder()),
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
              labelText: 'State', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'City', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Pincode', border: OutlineInputBorder()),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        const Text('Upload Documents'),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Upload Photo'),
        ),
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
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'YouTube Link (if any)', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'LinkedIn Profile (if any)', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        const Text('Verification will be done by admin'),
      ],
    );
  }
}