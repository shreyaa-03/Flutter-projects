import 'package:flutter/material.dart';
import 'package:new_app/src/constants/colors.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/constants/size.dart';
import 'package:new_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:new_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:new_app/src/utils/themes/elevated_button_theme.dart';
import 'package:new_app/src/utils/themes/themes.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var flag = true;
    var themeMode;
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;

    return Scaffold(
      // backgroundColor: isDarkMode ? Color(0xFF272727) : Color(0xFFFFE400),
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(defalutSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // FloatingActionButton(
              //   backgroundColor: Theme.of(context).hintColor,
              //   onPressed: () {
              //     if (flag) {
              //       themeMode = ThemeMode.dark;
              //       flag == false;
              //     } else {
              //       themeMode = ThemeMode.light;
              //       flag == true;
              //     }
              //   },
              //   child: Icon(
              //     Icons.sunny,
              //   ),
              // ),
              Image(
                image: AssetImage(welcome),
                height: height * 0.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Build Awesome Apps',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Lets put your creativity on the development highway.',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: Text('LOGIN'))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ));
                          },
                          child: Text('SIGN UP '))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
