import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/src/constants/images_str.dart';

import '../login/login_screen.dart';

class SingupFormFooter extends StatelessWidget {
  const SingupFormFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text.rich(TextSpan(
                    text: 'Alreay have an account?',
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                          text: ' Login',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: Colors.blue))
                    ])))
          ],
        ),
      ],
    );
  }
}
