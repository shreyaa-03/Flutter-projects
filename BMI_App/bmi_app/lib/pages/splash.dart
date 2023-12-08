import 'dart:async';

import 'package:bmi_app/pages/first.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Splash();
}

class _Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => FirstPage(),
          ));
    });
  }

  Color color1 = Color(0xFF9795f0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: color1,
            child: Center(
              child: Text(
                'BMI',
                style: TextStyle(
                    fontSize: 70,
                    color: Colors.white70,
                    fontWeight: FontWeight.w800),
              ),
            )));
  }
}
