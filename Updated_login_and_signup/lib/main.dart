import 'package:flutter/material.dart';
import 'screens/welcomeScreen.dart';
import 'screens/loginPage.dart';
import 'screens/registrationPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>WelcomeScreen(),
        '/register': (context)=> RegistrationPage(),
        '/login': (context)=> LoginPage(),
      },
    );
  }
}