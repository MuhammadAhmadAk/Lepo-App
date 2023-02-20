import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Pages/home_screen.dart';
import 'package:lepo_project/Dashboard/persistent_bottom_nav.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PersistentNavBar(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: appcolor,
        body: Center(
            child: Image.asset(
          appLogo,
          height: h * 0.2,
          width: w * 0.7,
        )));
  }
}
