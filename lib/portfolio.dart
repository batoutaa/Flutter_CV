import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Por'.tr),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            // Arrière-plan flou bleu
            _buildBlurredBackground(context),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProject('Projet Django'.tr, 'Lien vers Django'),
                    _buildProject('Projet React'.tr, 'Lien vers React'),
                    _buildProject('Projet PHP'.tr, 'Lien vers PHP'),
                    _buildProject('Projet Next.js'.tr, 'Lien vers Next.js'),
                    _buildProject('Projet Node.js'.tr, 'Lien vers Node.js'),
                    // Ajoutez d'autres projets comme cela
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(String projectName, String projectLink) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          projectName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Lien vers le projet :',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blueGrey,
          ),
        ),
        GestureDetector(
          onTap: () {
            // Naviguez vers le lien du projet ici
            // Vous pouvez utiliser "launch" pour ouvrir un navigateur Web, par exemple.
            // Exemple : launch(projectLink);
          },
          child: Text(
            projectLink,
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepOrange, // Utilisez une couleur différente pour le lien
              decoration: TextDecoration.underline, // Ajoutez un soulignement pour indiquer un lien
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBlurredBackground(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.3),
      ),
    );
  }
}
