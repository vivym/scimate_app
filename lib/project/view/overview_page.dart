import 'package:flutter/material.dart';
import 'package:scimate_app/project/project.dart';

class ProjectOverviewPage extends StatelessWidget {
  const ProjectOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Header'),
        Expanded(
          child: GridView.extent(
            maxCrossAxisExtent: 320,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.15,
            children: const [
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
              ProjectCard(),
            ],
          ),
        ),
      ],
    );
  }
}
