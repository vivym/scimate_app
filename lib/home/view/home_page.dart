import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Header'),
        Expanded(child: Text('Body')),
      ],
    );
  }
}
