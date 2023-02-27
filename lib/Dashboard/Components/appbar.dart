import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Constants/colors.dart';
class AppbarWidget extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  final Color? color;
  final Color? buttonColor;
  final Color? iconColor;


  const AppbarWidget({Key? key, this.title, this.onTap, this.color, this.buttonColor, this.iconColor,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0,vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: buttonColor??Colors.blue,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: onTap,
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 18,
                  color: iconColor??Colors.white,
                ),
              )),
           Text(
            title!,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: color??Colors.white),
          ),
          Container()
        ],
      ),
    );
  }
}
