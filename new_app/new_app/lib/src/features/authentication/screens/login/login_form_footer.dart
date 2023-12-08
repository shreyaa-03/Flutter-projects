import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/constants/size.dart';
import 'package:new_app/src/features/authentication/screens/onBoard/on_boarding.dart';
import 'package:new_app/src/features/authentication/screens/signup/signup_screen.dart';

import '../forgetPassword/forgetpass_emailbtn.dart';
import '../forgetPassword/forgetpass_modelbottomsheet.dart';

class LoginFormFoooter extends StatelessWidget {
  const LoginFormFoooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                show_modelbottomsheet(context);
              },
              child: Text(
                'Forget Password?',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.blue, fontWeight: FontWeight.w500),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnBoardingScreen(),
                      ));
                },
                child: Text('LOGIN'))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'OR',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                  icon: Image(
                    image: AssetImage(google),
                    height: 20,
                  ),
                  onPressed: () {},
                  label: Text('Sign-in with Google')),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text.rich(TextSpan(
                    text: 'Alreay have an account?',
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                          text: ' Signup',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: Colors.blue))
                    ])))
          ],
        )
      ],
    );
  }
}
