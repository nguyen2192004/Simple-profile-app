import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        // Use switch to provide routes for different route names
        switch (settings.name) {
          case '/home':
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          // can add more cases here for more screens
          default:
            return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      },
      initialRoute: '/home',
    );
  }
}
