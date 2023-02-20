import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Dashboard/Pages/home_screen.dart';
import 'package:lepo_project/Dashboard/Pages/order_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PersistentNavBar extends StatefulWidget {
  const PersistentNavBar({super.key});

  @override
  State<PersistentNavBar> createState() => _PersistentNavBarState();
}

class _PersistentNavBarState extends State<PersistentNavBar> {
  PersistentTabController controller = PersistentTabController();
  List<Widget> _buildScreen() {
    return [
      const HomeScreen(),
      const OrderScreen(),
      const Text("3"),
      const Text("4"),
    ];
  }

  List<PersistentBottomNavBarItem> navbarItems() {
    return [
      PersistentBottomNavBarItem(
        title: "HOME",
        icon: const Icon(
          Icons.home,
          color: whiteColor,
        ),
        activeColorSecondary: whiteColor,
        activeColorPrimary: appcolor,
        inactiveIcon: const Icon(
          Icons.home,
          color: appcolor,
        ),
        inactiveColorSecondary: appcolor,
        opacity: 0.0,
      ),
      PersistentBottomNavBarItem(
        title: "Orders",
        icon: const Icon(
          FontAwesomeIcons.truckFast,
          color: whiteColor,
        ),
        activeColorSecondary: whiteColor,
        activeColorPrimary: appcolor,
        inactiveIcon: const Icon(
          FontAwesomeIcons.truckFast,
          color: appcolor,
        ),
        inactiveColorSecondary: appcolor,
        opacity: 0.0,
      ),
      PersistentBottomNavBarItem(
          title: "Message",
          icon: const Icon(
            Icons.message,
            color: whiteColor,
          ),
          activeColorSecondary: whiteColor,
          activeColorPrimary: appcolor,
          inactiveIcon: const Icon(
            Icons.message,
            color: appcolor,
          ),
          inactiveColorSecondary: appcolor,
          opacity: 0.0),
      PersistentBottomNavBarItem(
          title: "Account",
          icon: const Icon(
            Icons.person,
            color: whiteColor,
          ),
          activeColorSecondary: whiteColor,
          activeColorPrimary: appcolor,
          inactiveIcon: const Icon(
            Icons.person,
            color: appcolor,
          ),
          inactiveColorSecondary: appcolor,
          opacity: 0.0),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreen(),
      items: navbarItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }
}
