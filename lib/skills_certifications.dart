import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillsCertificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Com'.tr),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            _buildBlurredBackground(context),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSkillCard('HTML','images/html.png', 80),
              _buildSkillCard('CSS', 'images/css.png', 75),
              _buildSkillCard('JavaScript', 'images/javascript.png', 85),
              _buildSkillCard('Django', 'images/django.png', 70),
              _buildSkillCard('Next.js', 'images/next.png', 75),
              _buildSkillCard('Node.js', 'images/node.png', 80),
              _buildSkillCard('Flutter', 'images/django.png', 90),
              _buildSkillCard('Android Native', 'images/css.png', 80),
              _buildSkillCard('React', 'images/javascript.png', 85),
              // Ajoutez d'autres compétences au besoin
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCard(String skill, String imagePath, int proficiencyPercentage) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(imagePath,
          width: 60,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Maîtrise: $proficiencyPercentage%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ],
      ),
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
