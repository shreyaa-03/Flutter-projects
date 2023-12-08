// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:new_app/src/authentication/authentication_repo.dart';

// class LoginController extends GetxController {
//   var showPassword;

//   static LoginController get instance => Get.find();
//   final controller = Get.put(AuthenticationRepo());

//   /// TextField Controllers to get data from TextFields
//   final email = TextEditingController();
//   final pass = TextEditingController();

//   // get showPassword => null;

//   /// TextField Validation

//   //Call this Function from Design & it will do the rest
//   // Future<void> loginUserWithEmailPass() async {
//   //   String? error = await controller.loginUserWithEmailPass(email.text.trim(), pass.text.trim());
//   //   if (error != null) {
//   //     Get.showSnackbar(GetSnackBar(
//   //       message: error.toString(),
//   //     ));
//   //   }
//   // }
//   void login(String email, String pass) async {
//     String? error =
//         await controller.loginUserWithEmailPass(email, pass) as String;
//     if (error != null) {
//       Get.showSnackbar(GetSnackBar(
//         message: error.toString(),
//       ));
//     }
//   }
// }
