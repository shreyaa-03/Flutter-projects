import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:new_app/src/features/authentication/screens/onBoard/on_boarding.dart';
import 'package:new_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenContrl extends GetxController {
  static SplashScreenContrl get find => Get.find();
  RxBool animate = false.obs;
  @override
  void initState() {
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    animate.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(Welcome());
  }
}
