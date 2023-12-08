import 'package:flutter/material.dart';
import 'package:new_app/src/constants/colors.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/constants/size.dart';

import 'login_form.dart';
import 'login_form_footer.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<LoginScreen> {
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
                        'Welcome Back,',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Make it work, make it fast, make it right',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LoginForm(),
                      LoginFormFoooter(),
                    ]))));
  }
}
