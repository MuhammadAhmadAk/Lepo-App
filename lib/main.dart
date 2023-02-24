import 'package:flutter/material.dart';
import 'package:lepo_project/Dashboard/Pages/Order%20Directory/order_detail.dart';
import 'package:lepo_project/Dashboard/persistent_bottom_nav.dart';
import 'package:lepo_project/Dashboard/splash_screen.dart';

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
      home: const PersistentNavBar(),
    );
  }
}
