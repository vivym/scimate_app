import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          context.go('/project/1');
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  'https://fastly.picsum.photos/id/409/300/200.jpg?hmac=6Hls2iTYfOV4LeMtjTpNRUHMz3A9ED2WFDIbHtyc2E8',
                  width: 300,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text('Updated 12/20/2024', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Icon(Icons.verified, color: Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
