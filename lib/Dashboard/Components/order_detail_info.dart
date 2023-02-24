import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';

class OrderDetailInfo extends StatelessWidget {
  final String title;
  final String info;

  const OrderDetailInfo({super.key, required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 15, color: purpleColors),
            ),
            Text(
              info,
              style: const TextStyle(
                  fontSize: 15, color: purpleColors, fontFamily: interBold),
            )
          ],
        ),
      ),
    );
  }
}
