import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Components/orders.dart';
import 'package:lepo_project/Dashboard/Admin_Directory/Pages/manage_booking_page.dart';
import 'package:lepo_project/Dashboard/Admin_Directory/Pages/manage_earning_page.dart';
import 'package:lepo_project/Dashboard/Admin_Directory/Pages/manage_orders_page.dart';
import 'package:lepo_project/Dashboard/Admin_Directory/Pages/manage_services_page.dart';
import 'package:lepo_project/Dashboard/Pages/Order%20Directory/order_detail.dart';

class ManagementScreen extends StatefulWidget {
  const ManagementScreen({super.key});

  @override
  State<ManagementScreen> createState() => _ManagementScreenState();
}

class _ManagementScreenState extends State<ManagementScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            const AppbarWidget(
              title: "Manage",
              color: appcolor,
              buttonColor: appcolor,
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
                          "Order",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "(2)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: const [
                        Text(
                          "Booking",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "(2)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: const [
                        Text(
                          "Services",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "(2)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: const [
                        Text(
                          "Earning",
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
            Expanded(
             child: TabBarView(children: [
               //OrderPage
               ManageOrderPage(),
               //BookingPage
               ManageBookingPage(),
               //Services
               ManageServicesPage(),
               //Earning
               ManageEarningPage()
             ]),
           )
          ],
        )),
      ),
    );
  }
}
