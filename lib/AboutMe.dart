import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutMeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, _buildContent(context)),
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Me",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Education: Bachelors in Computer Science"),
                      Text("Experience: 2 years in Flutter development"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Skills",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildSkillCard("Flutter", 0.8),
              _buildSkillCard("Dart", 0.7),
              _buildSkillCard("Firebase", 0.6),
              _buildSkillCard("Responsive Design", 0.75),
              SizedBox(height: 10),
              Text(
                "Hobbies",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Reading, Writing, Coding"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCard(String skill, double level) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(skill, style: TextStyle(fontSize: 16)),
            SizedBox(height: 5),
            LinearProgressIndicator(
              value: level,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
              minHeight: 5,
            ),
          ],
        ),
      ),
    );
  }
}
