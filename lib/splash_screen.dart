import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Vous pouvez personnaliser cet écran de démarrage
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home()),
      );
    });

    return Scaffold(
      body: Center(
        child: Text('Écran de démarrage'),
      ),
    );
  }
}
