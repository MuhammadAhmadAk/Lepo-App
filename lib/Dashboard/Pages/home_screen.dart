import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/Services_categpries.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: h * 0.39,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    appcolor,
                    Color.fromARGB(255, 231, 231, 231),
                  ],
                  tileMode: TileMode.mirror,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  child: Row(
                    children: [
                      Image.asset(
                        icMore,
                        height: h * 0.02,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
                //image SLider
                SizedBox(
                    height: h * 0.25,
                    width: w * 0.9,
                    child: Carousel(
                      indicatorBarColor: Colors.black.withOpacity(0.0),
                      autoScrollDuration: const Duration(seconds: 2),
                      animationPageDuration: const Duration(milliseconds: 300),
                      activateIndicatorColor: appcolor,
                      animationPageCurve: Curves.bounceInOut,
                      indicatorBarHeight: 0.0,
                      indicatorHeight: h * 0.01,
                      indicatorWidth: w * 0.025,
                      unActivatedIndicatorColor: Colors.white,
                      stopAtEnd: true,
                      autoScroll: true,
                      // widgets
                      items: [
                        //1st slider
                        Container(
                          height: h * 0.6,
                          decoration: const BoxDecoration(),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "Assign a Handyman at the work to fix the household",
                                        maxLines: 4,
                                        style: TextStyle(
                                            fontSize: 15, color: whiteColor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.03,
                                    ),
                                    CustombuttonWidget(
                                      onPressed: () {},
                                      child: Text("Book Now"),
                                      buttonHeight: h * 0.036,
                                      buttonWidth: w * 0.25,
                                      buttonborderRadius: 20,
                                      buttonBackgroundColor: Colors.black54,
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                imgWetFloor,
                                width: w * 0.6,
                              )
                            ],
                          ),
                        ),
                        //2nd slide
                        Container(
                          height: h * 0.6,
                          decoration: const BoxDecoration(),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "Assign a Handyman at the work to fix the household",
                                        maxLines: 4,
                                        style: TextStyle(
                                            fontSize: 15, color: whiteColor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.03,
                                    ),
                                    CustombuttonWidget(
                                      onPressed: () {},
                                      child: Text("Book Now"),
                                      buttonHeight: h * 0.036,
                                      buttonWidth: w * 0.25,
                                      buttonborderRadius: 20,
                                      buttonBackgroundColor: Colors.black54,
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                imgWetFloor,
                                width: w * 0.6,
                              )
                            ],
                          ),
                        ),
                        //3rd slide
                        Container(
                          height: h * 0.6,
                          decoration: const BoxDecoration(),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "Assign a Handyman at the work to fix the household",
                                        maxLines: 4,
                                        style: TextStyle(
                                            fontSize: 15, color: whiteColor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.03,
                                    ),
                                    CustombuttonWidget(
                                      onPressed: () {},
                                      child: Text("Book Now"),
                                      buttonHeight: h * 0.036,
                                      buttonWidth: w * 0.25,
                                      buttonborderRadius: 20,
                                      buttonBackgroundColor: Colors.black54,
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                imgWetFloor,
                                width: w * 0.6,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: h * 0.06,
                        width: w * 0.8,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 3.0)
                            ]),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: appcolor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: whiteColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: whiteColor),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        )),
                    Container(
                      height: h * 0.06,
                      width: w * 0.12,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 2.0)
                          ]),
                      child: Image.asset(
                        icFilter,
                        color: Colors.black.withOpacity(0.45),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          //locations
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      icLocation,
                      height: h * 0.03,
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Text(
                      "Please Choose your Location",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Image.asset(
                  icLocation_2,
                  height: h * 0.03,
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          //Categories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                CustombuttonWidget(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  buttonBackgroundColor: Colors.white54,
                  buttonWidth: w * 0.22,
                  buttonHeight: h * 0.04,
                  buttonborderRadius: 20,
                )
              ],
            ),
          ),
          Row(
            children: [
              ServicesCategories(
                imagePath: icCarService,
                title: "Car Services",
              ),
              ServicesCategories(
                imagePath: icMedicalService,
                title: "Medical Services",
              ),
              ServicesCategories(
                imagePath: icConstruction,
                title: "Construction",
              ),
            ],
          ),
          ///Servicesss
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                CustombuttonWidget(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  buttonBackgroundColor: Colors.white54,
                  buttonWidth: w * 0.22,
                  buttonHeight: h * 0.04,
                  buttonborderRadius: 20,
                )
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
