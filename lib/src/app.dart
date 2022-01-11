import 'package:flutter/material.dart';
import 'package:login_app/screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log Me In!',
      home: Scaffold(
        body: LoginScreen(),
        ),
    );
  }
}
