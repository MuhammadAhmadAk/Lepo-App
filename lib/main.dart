import 'package:flutter/material.dart';
import 'package:lepo_project/Dashboard/Pages/CheckOut_Directory/checkout.dart';
import 'package:lepo_project/Dashboard/persistent_bottom_nav.dart';

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
      home: const CheckoutScreen(),
    );
  }
}
