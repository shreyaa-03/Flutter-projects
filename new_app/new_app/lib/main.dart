import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:new_app/firebase_options.dart';
import 'package:new_app/src/authentication/authentication_repo.dart';
import 'package:new_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:new_app/src/utils/themes/themes.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
   
return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
     
      // defaultTransition: Transition.rightToLeftWithFade,
      // transitionDuration: Duration(milliseconds: 500),
      home: Welcome(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
