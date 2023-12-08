import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/features/authentication/screens/login/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());
    final loginFormKey = GlobalKey<FormState>();
    return Form(
      key: loginFormKey,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // validator: Helper.validateEmail,
                // controller: controller.email,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                  ),
                  label: Text('E-Mail'),
                  hintText: 'E-Mail',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              (TextFormField(
                // controller: controller.pass,
                // validator: (value) {
                //   if (value!.isEmpty) return 'Enter your password';
                //   return null;
                // },
                // obscureText: controller.showPassword.value ? false : true,
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
              )),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
