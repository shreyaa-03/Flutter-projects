import 'package:flutter/material.dart';
import 'package:new_app/src/constants/size.dart';
import 'package:new_app/src/features/authentication/screens/forgetPassword/otp_phone_screen.dart';

class ForgetPassPhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                'Enter your registered Phone No to reset your password',
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
                      prefixIcon: Icon(Icons.mobile_friendly_outlined),
                      label: Text('Phone No'),
                      hintText: 'Phone No',
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
                                builder: (context) => OtpPhoneScreen()));
                      }, child: const Text('NEXT')))
            ],
          ),
        ),
      ),
    );
  }
}
