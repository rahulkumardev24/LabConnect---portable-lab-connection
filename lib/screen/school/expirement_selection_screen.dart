// experiment_selection.dart
import 'package:flutter/material.dart';

class ExperimentSelectionScreen extends StatelessWidget {
  const ExperimentSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lab Experiment Selection'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Physics'),
              Tab(text: 'Chemistry'),
              Tab(text: 'Biology'),
              Tab(text: 'Mathematics'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildSubjectExperimentList('Physics'),
            _buildSubjectExperimentList('Chemistry'),
            _buildSubjectExperimentList('Biology'),
            _buildSubjectExperimentList('Mathematics'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.save),
        ),
      ),
    );
  }

  Widget _buildSubjectExperimentList(String subject) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          DropdownButtonFormField(
            items: ['Class 9', 'Class 10', 'Class 11', 'Class 12']
                .map((cls) => DropdownMenuItem(
              value: cls,
              child: Text(cls),
            ))
                .toList(),
            onChanged: (value) {},
            decoration: InputDecoration(
              labelText: 'Select Class',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.filter_alt),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Experiment ${index + 1}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text('Chapter: Waves and Optics'),
                          ],
                        ),
                      ),
                      Checkbox(
                        value: index % 3 == 0,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}