import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeTab extends StatelessWidget {
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
    return Column(children: [
      Container(
        height: 600,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/EnolaHolmes2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to my portfolio!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "I am a Flutter developer with experience in creating beautiful and responsive applications.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ]);
  }
}
