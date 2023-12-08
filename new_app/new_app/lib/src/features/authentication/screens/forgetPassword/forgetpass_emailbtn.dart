import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/src/constants/colors.dart';

class ForgetPassEmailBtnWidget extends StatelessWidget {
  const ForgetPassEmailBtnWidget({
    required this.btnicon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData btnicon;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    // var brightness = ;
    //  = mediaQuery.platformBrightness;
    // final isDarkMode = brightness == ThemeMode.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor),
        child: Row(children: [
          Icon(
            btnicon,
            size: 60.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          )
        ]),
      ),
    );
  }
}
