import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/Text_Widgets/PrimaryTextWidget.dart';
import 'package:lepo_project/Dashboard/Components/Text_Widgets/SecondaryTextWidget.dart';
import 'package:lepo_project/Dashboard/Components/admin_orderbox.dart';
import 'package:table_calendar/table_calendar.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 110,
                decoration: const BoxDecoration(
                    color: appcolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Home",
                            style: TextStyle(fontSize: 20, color: whiteColor),
                          ),
                          Icon(
                            Icons.notifications,
                            color: whiteColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 370,
                decoration: BoxDecoration(
                    color: greyColor, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SecondaryTextWidget(
                                  text: "Provider Type",
                                  fontSize: 16,
                                ),
                                const Text(":"),
                                PrimaryTextWidget(
                                  text: "Lepo",
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SecondaryTextWidget(
                                  text: "Total Earning",
                                  fontSize: 16,
                                ),
                                const Text(":"),
                                PrimaryTextWidget(
                                  text: "\$39842.33",
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  AdminOrderBox(orders: "03", label: "Total Booking"),
                  SizedBox(
                    width: 10,
                  ),
                  AdminOrderBox(orders: "13", label: "Total Services"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  AdminOrderBox(orders: "03", label: "Active Orders"),
                  SizedBox(
                    width: 10,
                  ),
                  AdminOrderBox(orders: "\$39078", label: "Total Booking"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Calender",
                      style: TextStyle(fontSize: 25, color: appcolor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TableCalendar(
                  locale: "en_US",
                  rowHeight: 40,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2010, 10, 10),
                  lastDay: DateTime.utc(2050, 12, 31),
                  onDaySelected: _onDaySelected,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
