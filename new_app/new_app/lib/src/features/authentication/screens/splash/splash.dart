import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_app/src/features/authentication/screens/splash/splash_controller.dart';
import 'package:new_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  final splashContrl = Get.put(SplashScreenContrl());
  @override
  Widget build(BuildContext context) {
    splashContrl.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashContrl.animate.value ? 0 : -30,
                left: splashContrl.animate.value ? 0 : -30,
                child: Image(
                  image: AssetImage('assets/images/yellow.png'),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 300,
              left: splashContrl.animate.value ? 50 : -10,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashContrl.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Learn to Code',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontSize: 30),
                    ),
                    Text(
                      'Learn to Code',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: Duration(milliseconds: 2400),
                right: 70,
                bottom: splashContrl.animate.value ? 200 : -100,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 2000),
                  opacity: splashContrl.animate.value ? 1 : 0,
                  child: Image(
                    image: AssetImage('assets/images/cartoon1.png'),
                    width: 400,
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: Duration(milliseconds: 2400),
                bottom: splashContrl.animate.value ? 40 : -10,
                right: splashContrl.animate.value ? 30 : -5,
                child: CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                )),
          )
        ],
      ),
    );
  }
}
