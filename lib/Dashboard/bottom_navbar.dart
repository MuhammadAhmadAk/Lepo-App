import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Dashboard/Pages/home_screen.dart';
import 'package:lepo_project/Dashboard/Pages/order_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var navIndex = 0;
    void onTabTapped(int index) {
      setState(() {
        navIndex = index;
      });
      print("navIndex : $navIndex");
    }

    var navItems = [
      const GButton(
        icon: Icons.home,
        text: 'Home',
      ),
      const GButton(
        icon: FontAwesomeIcons.truckFast,
        text: 'Order',
      ),
      const GButton(
        icon: Icons.message,
        text: 'Messages',
      ),
      const GButton(
        icon: Icons.account_circle,
        text: 'Account',
      ),
    ];
    var navbarBody = const [HomeScreen(), OrderScreen()];
    return Scaffold(
      bottomNavigationBar: Container(
        height: h * 0.1,
        width: w,
        padding: EdgeInsets.symmetric(horizontal: w * 0.03),
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: GNav(
              selectedIndex: navIndex,
              style: GnavStyle.google,
              rippleColor: Colors.grey, // tab button ripple color when pressed
              hoverColor: Colors.grey, // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 30,
              tabActiveBorder: Border.all(color: appcolor), // tab button border
              // tab animation curves
              duration:
                  const Duration(milliseconds: 300), // tab animation duration
              gap: w * 0.03, // the tab button gap between icon and text
              color: appcolor, // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: h * 0.024, // tab button icon size
              tabBackgroundColor: appcolor, // selected tab background color
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10), // navigation bar padding
              tabs: navItems,
              onTabChange: onTabTapped),
        ),
      ),
      body: Column(
        children: [Expanded(child: navbarBody[0])],
      ),
    );
  }
}
