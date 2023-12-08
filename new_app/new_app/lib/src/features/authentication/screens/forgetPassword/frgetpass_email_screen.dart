import 'package:flutter/material.dart';
import 'package:new_app/src/constants/size.dart';
import 'package:new_app/src/features/authentication/screens/forgetPassword/otp_mail_screen.dart';

class ForgetPassMailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defalutSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: defalutSize * 4,
              ),
              Image(
                image: AssetImage("assets/images/yellow_r.png"),
                height: height * 0.3,
              ),
              Text(
                'Forget Password',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Enter your registered E-Mail to reset your password',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                      label: Text('E-Mail'),
                      hintText: 'E-Mail',
                    ),
                  )
                ],
              )),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                      },
                      child: const Text('NEXT')))
            ],
          ),
        ),
      ),
    );
  }
}
