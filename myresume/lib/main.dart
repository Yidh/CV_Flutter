import 'package:flutter/material.dart';
import 'screens/cv/cv_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Définir la couleur de fond globale
      ),
      home: CVPage(),
    );
  }
}
