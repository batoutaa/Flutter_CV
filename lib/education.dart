import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Éducation'.tr),
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
            _buildSection('Licence'.tr),
            SizedBox(height: 16),
            _buildExperienceContainer('Anneé'.tr, ''),
            _buildExperienceContainer('Specialite'.tr, ''),
            SizedBox(height: 24),
            _buildSection('Expériences'.tr),
            SizedBox(height: 16),
            _buildExperienceContainer('Initiation'.tr, '2021-2022'),
            _buildExperienceContainer('Perfectionement'.tr, '2022-2023'),
            // Add other educational experiences as needed
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: _buildText(text, 24, FontWeight.bold, Colors.teal),
    );
  }

  Widget _buildExperienceContainer(String title, String date) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.tealAccent,
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
      child: _buildExperience(title, date),
    );
  }

  Widget _buildTextContainer(String text, double fontSize) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: _buildText(text, fontSize),
    );
  }

  Widget _buildExperience(String title, String date) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDotRow(),
        _buildText(title, 18, FontWeight.bold),
        _buildText(date, 16),
      ],
    );
  }

  Widget _buildDotRow() {
    return Row(
      children: [
        Icon(Icons.circle, size: 10, color: Colors.blueGrey),
        SizedBox(width: 8),
      ],
    );
  }

  Widget _buildText(String text, double fontSize, [FontWeight? fontWeight, Color? color]) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  Widget _buildBlurredBackground(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('background_image.jpg'), // Replace with your background image
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          color: Colors.cyan.withOpacity(0.3),
        ),
      ),
    );
  }
}
