import 'package:flutter/material.dart';

import '../../../Constants/images.dart';
import '../../Components/orders.dart';
import '../../Pages/Order Directory/order_detail.dart';

class ManageBookingPage extends StatefulWidget {
  const ManageBookingPage({Key? key}) : super(key: key);

  @override
  State<ManageBookingPage> createState() => _ManageBookingPageState();
}

class _ManageBookingPageState extends State<ManageBookingPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: SingleChildScrollView(
      child: Column(children: const [
        SizedBox(
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
          buttonText: "28/02/2023",
        ),
        SizedBox(
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
        buttonText: "28/02/2023",
        ),

        SizedBox(
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
          buttonText: "28/02/2023",
        )
      ],),
    ));
  }
}
