import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/account_menu_list.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
        children: [
            Container(
              height: h * 0.32,
              width: w,
              decoration: BoxDecoration(
                color: appcolor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  AppbarWidget(
                    title: "Account",
                    color: Colors.white,
                    buttonColor: whiteColor,
                    iconColor: appcolor,
                  ),
                  SizedBox(
                    height: h * 0.15,
                  ),
                  Image.asset(
                    appLogo,
                    height: h * 0.08,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: h * 0.28,
              width: w * 0.95,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 2.0,
                        blurStyle: BlurStyle.outer,
                        offset: Offset.fromDirection(2))
                  ]),
              child: Column(
                children: [
                  AccountMenuList(title:"Profile", listIcon: Icons.person_2_outlined ,),
                  AccountMenuList(title:"My Booking", listIcon: Icons.assignment_outlined ,),
                  AccountMenuList(title:"Notification", listIcon: Icons.notifications_outlined ,),
                  AccountMenuList(title:"Messages", listIcon: Icons.message_outlined ,),


                ],
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: h * 0.23,
              width: w * 0.95,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 2.0,
                        blurStyle: BlurStyle.outer,
                        offset: Offset.fromDirection(2))
                  ]),
              child: Column(
                children: [
                  AccountMenuList(title:"Setting", listIcon: Icons.person_2_outlined ,),
                  AccountMenuList(title:"Theme Mode", listIcon: FontAwesomeIcons.moon ,),
                  AccountMenuList(title:"Customer", listIcon: Icons.message_outlined ,),


                ],
              ),
            )
        ],
      ),
          )),
    );
  }
}
