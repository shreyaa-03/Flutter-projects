import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:new_app/src/constants/size.dart';

class OtpPhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(defalutSize),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('CO\nDE', style: Theme.of(context).textTheme.headline4),
          Text('VERIFICATION',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(fontSize: 14)),
          SizedBox(
            height: 40.0,
          ),
          Text(
            'Enter the verification code sent at ' + '9*******34',
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          OtpTextField(
            numberOfFields: 6,
            fieldWidth: 50,
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            cursorColor: Theme.of(context).hintColor,
            focusedBorderColor: Theme.of(context).hintColor,
            borderColor: Colors.grey.withOpacity(0),
            keyboardType: TextInputType.number,
            mainAxisAlignment: MainAxisAlignment.center,
            onSubmit: (code) {
              print('OTP is => $code');
            },
          ),
          SizedBox(
            height: 40.0,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text('NEXT')))
        ]),
      ),
    );
  }
}
