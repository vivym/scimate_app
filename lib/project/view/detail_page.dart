import 'package:flutter/material.dart';
import 'package:scimate_app/project/project.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ProjectDetailHeader(),
          Expanded(child: Text('Body')),
        ],
      ),
    );
  }
}
