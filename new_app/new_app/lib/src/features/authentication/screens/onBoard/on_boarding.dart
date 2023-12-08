import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:new_app/src/constants/images_str.dart';
import 'package:new_app/src/features/authentication/screens/onBoard/on_boarding2.dart';
import 'package:new_app/src/features/authentication/screens/onBoard/on_boarding3.dart';
import 'package:new_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Welcome(),
              ));
        },
        child: Icon(
          Icons.logout,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              OnBoardingPage(size: size),
              OnBoardingPage2(size: size),
              OnBoardingPage3(size: size),
            ],
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade100,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(office1),
              height: size.height * 0.5,
            ),
            Column(
              children: [
                Text(
                  'This is a flutter class',
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You will get to learn allot from here ',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
            Text(
              '1/3',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
