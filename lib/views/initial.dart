import 'package:flutter/material.dart';
import '../widgets/route_list_widget.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página Inicial')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Text('Minha página inicial', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            RouteListWidget(),
          ],
        ),
      ),
    );
  }
}