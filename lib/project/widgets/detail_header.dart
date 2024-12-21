import 'package:flutter/material.dart';

class ProjectDetailHeader extends StatelessWidget {
  const ProjectDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 100),
          const Text('Project Detail Header'),
          SizedBox(
            width: 100,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => { debugPrint('Back') },
                icon: const Icon(Icons.widgets),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
