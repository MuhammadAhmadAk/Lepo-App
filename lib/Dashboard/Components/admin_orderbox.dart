import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/images.dart';
import 'Text_Widgets/SecondaryTextWidget.dart';
class AdminOrderBox extends StatelessWidget {
  final String? orders;
  final String? label;
  final VoidCallback? onPressed;
  const AdminOrderBox({Key? key, required this.orders, required this.label, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 2.0)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 14.0, vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$orders",
                  style: TextStyle(
                      fontSize: 24,
                      color: appcolor,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: onPressed,
                  child: Image.asset(
                    icList,
                    height: 24,
                    width: 24,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: SecondaryTextWidget(
                  text: "$label",
                  fontSize: 16,
                )),
          )
        ],
      ),
    );
  }
}
