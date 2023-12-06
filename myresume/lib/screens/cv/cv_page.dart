// cv_page.dart
import 'package:flutter/material.dart';
import 'package:myresume/widgets/cv/cv_widget.dart';

class CVPage extends StatelessWidget {
  const CVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon CV'),
        backgroundColor: Colors.black, // Définir la couleur de fond de l'AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blue], // Dégradé de noir à bleu
          ),
        ),
        child: Center(
          child: CVWidget(),
        ),
      ),
    );
  }
}
