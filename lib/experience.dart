import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exp'.tr),
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildExperienceContainer(
              '1ère'.tr,
              'Nom'.tr,
              'Péri'.tr,
            ),
            _buildExperienceContainer(
              '2ème'.tr,
              'Nom'.tr,
              'Pér'.tr,
            ),
            _buildExperienceContainer(
              'optionnel'.tr,
              'Nom'.tr,
              'Pério'.tr,
            ),
            // Add other professional experiences as needed
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceContainer(String title, String company, String period) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal,
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
      child: _buildExperience(title, company, period),
    );
  }

  Widget _buildExperience(String title, String company, String period) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          company,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Text(
          period,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black
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
