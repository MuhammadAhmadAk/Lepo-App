import 'package:flutter/material.dart';
import 'package:lepo_project/Dashboard/Pages/Account_Directory/Profile_Directory/edit_profile.dart';
import 'package:lepo_project/Dashboard/Admin_Directory/management_screen.dart';
import 'package:lepo_project/Dashboard/Admin_Directory/support.dart';
import 'package:lepo_project/Dashboard/Pages/CheckOut_Directory/checkout.dart';
import 'package:lepo_project/Dashboard/Pages/Order%20Directory/track_order_screen.dart';
import 'package:lepo_project/Dashboard/persistent_bottom_nav.dart';

import 'Dashboard/Admin_Directory/Pages/Home_Directory/admin_home_screen.dart';
import 'Dashboard/Pages/Account_Directory/Profile_Directory/profile_Review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TrackOrderScreen(),
    );
  }
}
