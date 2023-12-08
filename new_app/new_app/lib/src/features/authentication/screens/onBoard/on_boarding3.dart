import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/images_str.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade100,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(office3),
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
              '3/3',
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
