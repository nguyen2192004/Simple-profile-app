import 'package:flutter/material.dart';
//import signinScreen.dart;
import 'SignInScreen.dart';
import 'SignUpScreen.dart';

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
          case '/':
            return MaterialPageRoute(builder: (_) => SignInScreen());
          case '/signup':
            return MaterialPageRoute(builder: (_) => SignUpScreen());
          // can add more cases here for more screens
          default:
            return MaterialPageRoute(builder: (_) => SignInScreen());
        }
      },
      initialRoute: '/',
    );
  }
}
