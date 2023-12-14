import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Info".tr),

          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

        ),
        body: Stack(
          children: [
            // Blurred blue background
            _buildBlurredBackground(context),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profil.png'),
                      radius: 100,
                    ),
                    SizedBox(height: 24),
                    Text(
                      'AhmedRekik'.tr,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic, // Make it italic
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Développeur'.tr,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold, // Make it bold
                        fontStyle: FontStyle.italic, // Make it italic
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 24),
                    _buildInfoRow(Icons.location_on, 'Route Mahdia Km 6','Route'.tr),
                    _buildInfoRow(Icons.phone, 'tel:+21695464707','95464707'),
                    _buildInfoRow(Icons.email, 'mailto:ahmed.rekik891@gmail.com','email'.tr),

                    SizedBox(height: 10),
                    _buildSectionHeader('Langues'.tr),
                    _buildLanguage('Français'.tr, 'images/france.png', 40),
                    _buildLanguage('Anglais'.tr, 'images/uk.png', 50),
                    // Add other sections and information as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text,String param) {
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: () {
launchUrlString(text);
          },
          icon: Icon(icon),
          label: Text(''),
        ),
        SizedBox(width: 10),
        Text(
          param,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }

  Widget _buildBlurredBackground(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        color: Colors.cyan.withOpacity(0.3),
      ),
    );
  }

  Widget _buildSectionHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic, // Make it italic
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSkill(String skill) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        skill,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold, // Make it bold
          fontStyle: FontStyle.italic, // Make it italic
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget _buildLanguage(String language, String flagPath, double size) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            language,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold, // Make it bold
              fontStyle: FontStyle.italic, // Make it italic
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(width: 15),
          Image.asset(
            flagPath,
            width: size,
            height: size,
          ),
        ],
      ),
    );
  }
}
