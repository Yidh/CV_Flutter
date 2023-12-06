import 'package:flutter/material.dart';

class CVWidget extends StatelessWidget {
  const CVWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.blue], // Dégradé de noir à bleu
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildSection('Nom et Prénom', 'Adresse', fontSize: 32),
            SizedBox(height: 20),
            _buildSection('Objectif', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', fontSize: 24),
            SizedBox(height: 30),
            _buildSection('Compétences', 'Compétence 1, Compétence 2, Compétence 3', fontSize: 24),
            SizedBox(height: 30),
            _buildExperienceSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content, {double fontSize = 18}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Expérience Professionnelle',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          _buildExperienceItem('Poste 1', 'Nom de l\'entreprise - Date'),
          _buildExperienceItem('Poste 2', 'Nom de l\'entreprise - Date'),
        ],
      ),
    );
  }

  Widget _buildExperienceItem(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
    );
  }
}
