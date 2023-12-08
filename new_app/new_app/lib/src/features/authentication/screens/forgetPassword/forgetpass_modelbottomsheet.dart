import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/src/features/authentication/screens/forgetPassword/frgetpass_email_screen.dart';
import 'package:new_app/src/features/authentication/screens/forgetPassword/frgetpass_phone_screen.dart';

import '../../../../constants/size.dart';
import 'forgetpass_emailbtn.dart';

Future<dynamic> show_modelbottomsheet(BuildContext context) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.all(defalutSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Make Selection!',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Select one of the options given below to reset your password.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 30,
          ),
          ForgetPassEmailBtnWidget(
            btnicon: Icons.mail_outline_rounded,
            title: 'E-Mail',
            subtitle: 'Reset via E-Mail verification',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassMailScreen(),
                  ));
            },
          ),
          SizedBox(
            height: 30,
          ),
          ForgetPassEmailBtnWidget(
            btnicon: Icons.mobile_friendly_rounded,
            title: 'Phone No',
            subtitle: 'Reset via Phone verification',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassPhoneScreen(),
                  ));
            },
          ),
        ],
      ),
    ),
  );
}
