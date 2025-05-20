import 'package:flutter/material.dart';
import '../widgets/route_list_widget.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
       
        padding: const EdgeInsets.only(top: 50, right: 20, bottom: 20, left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/HellenDarling.jpg"),
          fit: BoxFit.cover)
        ),
       
        child: Column(
          children: const [
            SizedBox(height: 16),
            RouteListWidget(),
          ],
        ),
      ),
    );
  }
}