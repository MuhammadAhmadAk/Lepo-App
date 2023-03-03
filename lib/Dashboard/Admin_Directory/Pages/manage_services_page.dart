import 'package:flutter/material.dart';

import '../../../Constants/images.dart';
import '../../Components/custom_button.dart';
import '../../Components/services.dart';
class ManageServicesPage extends StatelessWidget {
  const ManageServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return  SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [

          Row(
            children: const [
              ServicesWidget(
                imagePath: massageService,
                serviceTitle: "Massage Service",
                country: "Switxerland",
                name: "John",
                review: 300,
                rating: "4.5",
                price: 40.35,
              ),
              ServicesWidget(
                imagePath: carService,
                serviceTitle: "Cars Service",
                country: "Switxerland",
                name: "John",
                review: 300,
                rating: "4.5",
                price: 40.35,
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended for you",
                  style:
                  TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
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
          Row(
            children: const [
              ServicesWidget(
                imagePath: massageService,
                serviceTitle: "Massage Service",
                country: "Switxerland",
                name: "John",
                review: 300,
                rating: "4.5",
                price: 40.35,
              ),
              ServicesWidget(
                imagePath: carService,
                serviceTitle: "Cars Service",
                country: "Switxerland",
                name: "John",
                review: 300,
                rating: "4.5",
                price: 40.35,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
