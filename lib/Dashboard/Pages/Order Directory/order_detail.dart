import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/order_detail_info.dart';
import 'package:lepo_project/Dashboard/Components/orders.dart';
import 'package:lepo_project/Dashboard/Components/timebox.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: w,
            height: h * 0.25,
            color: whiteColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Time left to Deliver",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: interRegular,
                          fontWeight: FontWeight.bold,
                          color: purpleColors),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TimeBoxWidget(
                      timeText: "2",
                      timeDuration: 'Days',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TimeBoxWidget(
                      timeText: "2",
                      timeDuration: 'Hour',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TimeBoxWidget(
                      timeText: "2",
                      timeDuration: 'minutes',
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: w,
            height: h * 0.02,
            color: greyColor,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "Order Detail",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: interRegular,
                    fontWeight: FontWeight.bold,
                    color: purpleColors),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const OrderWidget(
            serviceTitle: "Massage Service",
            imagePath: massageService,
            name: "John",
            country: "Switzerlan",
            rating: "4.0",
            price: 40.55,
            review: 303,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: w,
            child: Column(
              children: [
                const OrderDetailInfo(title: "Name", info: "John"),
                OrderDetailInfo(title: "Time", info: DateTime.now().toString()),
                const OrderDetailInfo(title: "Price", info: "40.55\$"),
                const OrderDetailInfo(
                    title: "Promo Code", info: "#FF2345352AFAF")
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "Track Order",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: interRegular,
                    fontWeight: FontWeight.bold,
                    color: purpleColors),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: purpleColors,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Icon(
                        Icons.check,
                        color: whiteColor,
                      )),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      "Requirement Submitted",
                      style: TextStyle(fontSize: 17, color: purpleColors),
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: h * 0.04,
                      width: 3,
                      decoration: const BoxDecoration(
                        color: purpleColors,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: purpleColors, width: 2)),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      "Order in Progress",
                      style: TextStyle(fontSize: 17, color: purpleColors),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
