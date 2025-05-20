import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: const Text('About'), backgroundColor: const Color.fromARGB(255, 246, 240, 220),),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(
              children: [Expanded(child: Container(color: Colors.green))],
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(
              children: [Expanded(child: Container(color: Colors.blue))],
            ),
          ),
        ],
      ),
    );
  }
}
