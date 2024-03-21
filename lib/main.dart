import 'package:flutter/material.dart';
//import signinScreen.dart;
import 'SignInScreen.dart';
import 'SignUpScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //set the theme for bottom navigation bar
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          //set linear gradient for bottom navigation bar

          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red,
        ),
      ),
      onGenerateRoute: (settings) {
        // Use switch to provide routes for different route names
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const SignInScreen());
          case '/signup':
            return MaterialPageRoute(builder: (_) => const SignUpScreen());
          case '/home':
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          // can add more cases here for more screens
          default:
            return MaterialPageRoute(builder: (_) => const SignInScreen());
        }
      },
      initialRoute: '/',
    );
  }
}
