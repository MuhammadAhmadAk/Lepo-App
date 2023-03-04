import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/Text_Widgets/SecondaryTextWidget.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Pages/Auth%20Directory/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.3,
            decoration: const BoxDecoration(
                color: appcolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(
                  height: height * 0.03,
                ),
                const AppbarWidget(
                  title: '',
                  color: appcolor,
                  buttonColor: whiteColor,
                  iconColor: appcolor,
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, color: whiteColor),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                const Text("Hi, Welcome Back!",
                    style: TextStyle(fontSize: 15, color: whiteColor))
              ]),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Johndoe@gmail.com",
                    labelText: "Email",
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: "******",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?",
                    style: TextStyle(color: appcolor))),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          CustombuttonWidget(
            onPressed: () {},
            child: Text("Login"),
            buttonBackgroundColor: appcolor,
            buttonWidth: width * 0.8,
            buttonHeight: height * 0.06,
          ),
          SizedBox(
            height: height * 0.018,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreen()));
            },
            child: const Text("You don't have an account?",
                style: TextStyle(fontSize: 16, color: appcolor)),
          ),

          SizedBox(height: height * 0.04),
          //
          CustombuttonWidget(
              buttonBackgroundColor: greyColor,
              buttonborderRadius: 30,
              onPressed: () {},
              buttonWidth: width * 0.8,
              child: Row(
                children: [
                  SizedBox(width: width * 0.15),
                  Image.asset(
                    icGoogle,
                    height: 20,
                  ),
                  SizedBox(width: width * 0.03),
                  SecondaryTextWidget(text:"Continoue with Google")
                ],
              )),
          SizedBox(
            height: height * 0.008,
          ),
          CustombuttonWidget(
              buttonBackgroundColor: Colors.indigo,
              buttonborderRadius: 30,
              onPressed: () {},
              buttonWidth: width * 0.8,
              child: Row(
                children: [
                  SizedBox(width: width * 0.15),
                  Image.asset(
                    icFacebook,color: whiteColor,
                    height: 20,
                  ),
                  SizedBox(width: width * 0.03),
                  Text("Continoue with Facebook")
                ],
              )),

          SizedBox(
            height: height * 0.008,
          ),
          CustombuttonWidget(
              buttonBackgroundColor: Colors.black,
              buttonborderRadius: 30,
              onPressed: () {},
              buttonWidth: width * 0.8,
              child: Row(
                children: [
                  SizedBox(width: width * 0.15),
                  Image.asset(
                    icApple,color: whiteColor,
                    height: 20,
                  ),
                  SizedBox(width: width * 0.03),
                  Text("Continoue with Apple")
                ],
              )),
        ],
      ),
    ));
  }
}
