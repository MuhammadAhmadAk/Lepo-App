import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/Text_Widgets/SecondaryTextWidget.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Components/profile_textfiled.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 210,
                    decoration: const BoxDecoration(
                      color: appcolor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                    ),
                    child: Column(
                      children: const [
                        AppbarWidget(
                          title: "Edit Profile",
                          color: whiteColor,
                          buttonColor: whiteColor,
                          iconColor: appcolor,
                        )
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
                      "Save",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Positioned(
                left: 145,
                top: 130,
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(profileImg),
                      ),
                      Positioned(
                        left: 85,
                        top: 88,
                        child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: appcolor.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: whiteColor,
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
