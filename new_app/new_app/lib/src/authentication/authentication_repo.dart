// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:new_app/src/authentication/exceptions/signup_email_pass_failure.dart';
// import 'package:new_app/src/features/authentication/screens/onBoard/on_boarding.dart';
// import 'package:new_app/src/features/authentication/screens/welcome/welcome_screen.dart';

// class AuthenticationRepo extends GetxController {
//   static AuthenticationRepo get instance => Get.find();

//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;

//   @override
//   void onReady() {
//     firebaseUser = Rx<User?>(_auth.currentUser);
//     firebaseUser.bindStream(_auth.userChanges());
//     ever(firebaseUser, setInitialScreen);
//   }

//   setInitialScreen(User? user) {
//     user == null
//         ? Get.offAll(() => Welcome())
//         : Get.offAll(() => OnBoardingScreen());
//   }

//   Future<void> createUserWithEmailPass(String email, String pass) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(email: email, password: pass);
//       firebaseUser.value != null
//           ? Get.offAll(() => OnBoardingScreen())
//           : Get.to(() => Welcome());
//     } on FirebaseAuthException catch (e) {
//       final ex = SignupEmailPassFailure.code(e.code);
//       print('FIREBASE AUTH EXCEPTION - ${ex.message}');
//       throw ex;
//     } catch (_) {
//       const ex = SignupEmailPassFailure();
//       print('FIREBASE AUTH EXCEPTION - ${ex.message}');
//       throw ex;
//     }
//     return null;
//   }

//   Future<void> loginUserWithEmailPass(String email, String pass) async {
//     try {
//       await _auth.signInWithEmailAndPassword(email: email, password: pass);
//       firebaseUser.value != null
//           ? Get.offAll(() => OnBoardingScreen())
//           : Get.to(() => Welcome());
//     } on FirebaseAuthException catch (e) {
//       final ex = SignupEmailPassFailure.code(e.code);
//       print('FIREBASE AUTH EXCEPTION - ${ex.message}');
//       throw ex;
//     } catch (_) {
//       const ex = SignupEmailPassFailure();
//       print('FIREBASE AUTH EXCEPTION - ${ex.message}');
//       throw ex;
//     }
//     return null;
//   }

//   Future<void> logout() async => await _auth.signOut();

//   signInWithEmailAndPassword(String trim, String trim2) {}
// }
