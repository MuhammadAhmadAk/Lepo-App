import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/Text_Widgets/PrimaryTextWidget.dart';
import 'package:lepo_project/Dashboard/Components/Text_Widgets/SecondaryTextWidget.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Components/payment_methods.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWidget(
              title: "Checkout",
              onTap: () {},
              color: purpleColors,
              buttonColor: appcolor,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.credit_card,
                        size: 35,
                      ),
                      Container(
                        height: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryTextWidget(
                        text: "Payment Option",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      SecondaryTextWidget(
                          text: "select you prefered Payment mode")
                    ],
                  ),
                  Container()
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const PaymentMethodWidget(
              value: "Paypal",
              imagePath: icPaypal,
              title: "Paypal",
              description: "Click to pay with your Paypal account",
              height: 30,
            ),
            const PaymentMethodWidget(
              value: "RazorPay",
              imagePath: icRazorPay,
              title: "RazorPay",
              description: "Click to pay with your RazorPay account",
              height: 30,
            ),
            const PaymentMethodWidget(
              value: "Cash",
              imagePath: icDollar,
              title: "Cash",
              description: "Click to pay with Cash finish",
              height: 80,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: w,
              height: h * 0.5,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 1.0,
                      offset: Offset.fromDirection(4))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: h * 0.15,
                            width: w * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(massageService))),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Massage Service",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: interRegular),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "John",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Switzerland",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Icon(
                                    Icons.location_pin,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Tax Amount",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: interRegular,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "5.45\$",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: interRegular,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Sub Total",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: interRegular,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "33.45\$",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: interRegular,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Total Amount",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: interRegular,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "5.45\$",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: interRegular,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustombuttonWidget(
                      onPressed: () {},
                      child: Text(
                        "Confirm & Pay Now",
                        style: TextStyle(fontSize: 20),
                      ),
                      buttonHeight: h * 0.055,
                      buttonWidth: w * 0.8,
                      buttonBackgroundColor: appcolor,
                      buttonborderRadius: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
