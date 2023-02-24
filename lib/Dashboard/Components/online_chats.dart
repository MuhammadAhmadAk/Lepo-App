import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Constants/images.dart';

import '../../Constants/colors.dart';
class OnlineChat extends StatelessWidget {
  const OnlineChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(profileImg),
                radius: 30,
              ),
              Positioned(
                right: 2,
                top: 4,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        );
      },
      itemCount:15,
    );
  }
}