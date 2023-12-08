import 'package:block_form_validate/screens/sign_in/home_screen.dart';
import 'package:block_form_validate/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
