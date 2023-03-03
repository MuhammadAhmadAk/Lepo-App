import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Components/orders.dart';
import 'package:lepo_project/Dashboard/Pages/Order%20Directory/order_detail.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Orders",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  CustombuttonWidget(
                    onPressed: () {},
                    buttonBackgroundColor: Colors.white54,
                    buttonWidth: w * 0.22,
                    buttonHeight: h * 0.04,
                    buttonborderRadius: 20,
                    child: const Text(
                      "View all",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            TabBar(
                isScrollable: true,
                labelColor: appcolor,
                dividerColor: appcolor,
                indicatorColor: appcolor,
                tabs: [
                  Tab(
                    child: Row(
                      children: const [
                        Text(
                          "Active",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "(2)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ]),
            const SizedBox(
              height: 10,
            ),
            OrderWidget(
              imagePath: massageService,
              serviceTitle: "Massage services",
              country: "Switxerland",
              name: "John",
              review: 300,
              rating: "4.5",
              price: 40.35,
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            OrderWidget(
              imagePath: carService,
              serviceTitle: "Cars Service",
              country: "Switxerland",
              name: "John",
              review: 300,
              rating: "4.5",
              price: 40.35,
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ));
              },
            )
          ],
        )),
      ),
    );
  }
}
