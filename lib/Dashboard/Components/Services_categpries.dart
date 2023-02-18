

import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
class ServicesCategories extends StatelessWidget {
  final String ? imagePath;
 final String ? title;
  const ServicesCategories({Key? key, this.imagePath, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: h*0.17,
        width: w*0.29,
        decoration: BoxDecoration(
          color: appcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.013,
            ),
            Text("$title",style: TextStyle(color: whiteColor,fontSize: 12),),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              height: h*0.07,
              width: w*0.14,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),


              ),
              child: Center(child: Image.asset(imagePath!,height: h*0.04,),),
            ),
          ],
        ),
      ),
    );
  }
}
