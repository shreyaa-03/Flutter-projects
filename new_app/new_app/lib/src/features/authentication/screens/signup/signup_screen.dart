import 'package:flutter/material.dart';
import 'package:new_app/src/constants/colors.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/constants/size.dart';
import 'package:new_app/src/features/authentication/screens/login/login_screen.dart';

import 'signup_form.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Signup();
}

class _Signup extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defalutSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(welcome),
                height: height * 0.3,
              ),
              Text(
                'Get On Board!,',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Create your profile to start your Jouney.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 10,
              ),
              Signup_form(),
            ],
          ),
        ),
      ),
    );
  }
}
