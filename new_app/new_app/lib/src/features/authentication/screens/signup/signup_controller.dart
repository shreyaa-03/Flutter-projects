// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:new_app/src/authentication/authentication_repo.dart';

// class SignupController extends GetxController {
//   static SignupController get instance => Get.find();
//   final controller = Get.put(AuthenticationRepo());

//   final email = TextEditingController();
//   final phone = TextEditingController();
//   final pass = TextEditingController();
//   final fullname = TextEditingController();

//   void registerUser(String email, String pass) {
//     String? error = controller.createUserWithEmailPass(email, pass) as String;
//     if (error != null) {
//       Get.showSnackbar(GetSnackBar(
//         message: error.toString(),
//       ));
//     }
//   }
// }
