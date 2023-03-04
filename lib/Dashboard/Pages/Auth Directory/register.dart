import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Components/profile_textfiled.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                decoration: const BoxDecoration(
                  color: appcolor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                ),
                child: Column(
                  children: const [
                    AppbarWidget(
                      title: "",
                      color: whiteColor,
                      buttonColor: whiteColor,
                      iconColor: appcolor,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text("Registor",style: TextStyle(fontSize: 25,color: whiteColor),)
                    
                  ],
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),
              const ProfileTextField(
                label: "Username",
                labelInfo: "John Morphy",
                inputType: TextInputType.name,
              ),
              const ProfileTextField(
                label: "Email",
                labelInfo: "John.Morphy@gmail.com",
                inputType: TextInputType.emailAddress,
              ),
              const ProfileTextField(
                label: "Phone",
                labelInfo: "(+91)-748-9882",
                inputType: TextInputType.phone,
              ),
              const ProfileTextField(
                label: "Gender",
                labelInfo: "Male",
                inputType: TextInputType.text,
              ),
              const ProfileTextField(
                label: "Date of Birth",
                labelInfo: "18/10/2001",
                inputType: TextInputType.datetime,
              ),
              SizedBox(height: 10,),
              CustombuttonWidget(
                onPressed: () {},
                buttonWidth: 350,
                buttonHeight: 55,
                buttonBackgroundColor: appcolor,
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
