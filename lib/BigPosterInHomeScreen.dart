import 'package:flutter/material.dart';

class BigPosterInHomeScreen extends StatelessWidget {
  List<Image> posters = [];
  BigPosterInHomeScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/EnolaHolmes2.jpg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
