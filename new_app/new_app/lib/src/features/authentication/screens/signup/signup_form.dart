import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/features/authentication/screens/signup/signup_controller.dart';
import 'package:new_app/src/features/authentication/screens/signup/signup_form_footer.dart';
import 'package:new_app/src/features/authentication/screens/welcome/welcome_screen.dart';

import '../login/login_screen.dart';

class Signup_form extends StatelessWidget {
  const Signup_form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SignupController());

    final formKey = GlobalKey<FormState>();
    return Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // controller: controller.fullname,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                  ),
                  label: Text('Full Name'),
                  hintText: 'Full Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: controller.email,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  label: Text('E-Mail'),
                  hintText: 'E-Mail',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: controller.phone,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  label: Text('Phone No'),
                  hintText: 'Phone No',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: controller.pass,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.fingerprint,
                    ),
                    label: Text('Password'),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_sharp),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // if (formKey.currentState!.validate()) {
                        //   controller.registerUser(controller.email.text.trim(),
                        //       controller.pass.text.trim());
                        // }
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Welcome(),
                            ));
                      },
                      child: Text('SIGNUP'))),
              SingupFormFooter()
            ],
          ),
        ));
  }
}
