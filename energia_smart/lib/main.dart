import 'package:flutter/material.dart';
import '../../screens/login_screen.dart';

void main() {
  runApp(EnergiaSmartApp());
}

class EnergiaSmartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Energia Smart',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginScreen(),
    );
  }
}