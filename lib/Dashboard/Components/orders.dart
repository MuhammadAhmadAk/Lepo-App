import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';

class OrderWidget extends StatelessWidget {
  final String? serviceTitle;
  final String? imagePath;
  final String? name;
  final String? country;
  final String? rating;
  final int? review;
  final double? price;
  final VoidCallback? onpressed;

  const OrderWidget(
      {super.key,
      required this.serviceTitle,
      required this.imagePath,
      required this.name,
      required this.country,
      required this.rating,
      required this.price,
      required this.review,
      this.onpressed});
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: h * 0.20,
        width: w * 0.95,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 1.0,
                  offset: Offset.zero,
                  spreadRadius: 1)
            ]),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: h * 0.2,
                width: w * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(imagePath!))),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$serviceTitle",
                          style: const TextStyle(
                              fontSize: 14, fontFamily: interBold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$name",
                          style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontFamily: interSemiBold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$country",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              fontFamily: interThin),
                        ),
                        const Icon(
                          Icons.location_pin,
                          color: Colors.red,
                          size: 13,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "$rating",
                          style: const TextStyle(
                              fontFamily: interRegular, fontSize: 11),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "($review Reviews)",
                          style: const TextStyle(
                              fontFamily: interRegular, fontSize: 11),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$price\$",
                          style: const TextStyle(
                              fontSize: 15, fontFamily: interBold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CustombuttonWidget(
                          onPressed: () {},
                          buttonBackgroundColor: appcolor,
                          buttonHeight: h * 0.035,
                          buttonWidth: 85,
                          buttonborderRadius: 20,
                          child: const Text(
                            "In Progress",
                            style: TextStyle(fontSize: 9),
                          ),
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
    );
  }
}
