import 'package:flutter/material.dart';

import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:pinput/pinput.dart';
import '../../Components/appbar.dart';

class OtpScreen extends StatelessWidget {

  const OtpScreen({super.key});


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.45,
              decoration: const BoxDecoration(
                  color: appcolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.03),

                    const AppbarWidget(
                      title: 'Verification Code',
                      color: whiteColor,
                      buttonColor: whiteColor,
                      iconColor: appcolor,
                    ),
                    SizedBox(height: height * 0.01),
                    const Text(
                        textAlign: TextAlign.center,
                        "Please enter the verification code sent to +91 728 583 1282",
                        style: TextStyle(fontSize: 20, color: whiteColor)),
                    SizedBox(height: height * 0.01),
                    Image.asset(
                      tabletImg,
                      height: 140,
                      width: 140,
                    )
                    // Text("Otp", style: TextStyle(fontSize: 30,color:MyColors.myWhiteColor),),
                  ]),
            ),
            SizedBox(height: height * 0.2),
            const Text(
              "Didn't recieve Otp",
              style: TextStyle(fontFamily: interRegular, fontSize: 16),
            ),
            SizedBox(height: height * 0.02),
            const Text(
              "Resend OTP",
              style: TextStyle(fontFamily: interRegular, fontSize: 16,fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: height * 0.14),
            CustombuttonWidget(onPressed: (){},buttonWidth: 300,buttonHeight: 50, child: const Text("Submit"),buttonBackgroundColor: appcolor,)
          ],
        ),
        Positioned(
          top: 370,
          left: width * 0.1,
          child: Pinput(
            defaultPinTheme: PinTheme(
              width: 70,
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 30),
              textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(30, 60, 87, 1),
                  fontWeight: FontWeight.w600),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 2.0,
                  )
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            validator: (s) {
              // return s == '2222' ? null : 'Pin is incorrect';
            },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),
        )
      ],
    ));
  }
}
