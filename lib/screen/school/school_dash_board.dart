import 'package:flutter/material.dart';
import 'package:lab_connect/screen/school/student_register_screen.dart';
import 'package:lab_connect/screen/school/time_table_screen.dart';
import 'add_class_screen.dart';
import 'expirement_selection_screen.dart';


class SchoolDashboard extends StatelessWidget {
  const SchoolDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('School Dashboard')),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: [
          _buildDashboardItem(
            context,
            Icons.group_add,
            'Add Class & Section',
            const AddClassSectionScreen(),
          ),
          _buildDashboardItem(
            context,
            Icons.schedule,
            'Time Table',
            const TimeTableScreen(),
          ),
          _buildDashboardItem(
            context,
            Icons.person_add,
            'Student Registration',
            const StudentRegisterScreen(),
          ),
          _buildDashboardItem(
            context,
            Icons.science,
            'Lab Experiments',
            const ExperimentSelectionScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(
      BuildContext context, IconData icon, String title, Widget screen) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}