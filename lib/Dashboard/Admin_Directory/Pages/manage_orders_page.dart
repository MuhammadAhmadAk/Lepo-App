import 'package:flutter/material.dart';

import '../../../Constants/images.dart';
import '../../Components/orders.dart';
import '../../Pages/Order Directory/order_detail.dart';

class ManageOrderPage extends StatefulWidget {
  const ManageOrderPage({Key? key}) : super(key: key);

  @override
  State<ManageOrderPage> createState() => _ManageOrderPageState();
}

class _ManageOrderPageState extends State<ManageOrderPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: SingleChildScrollView(
      child: Column(children: [
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
      ],),
    ));
  }
}
