import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';

class ServicesWidget extends StatelessWidget {
  final String? serviceTitle;
  final String? imagePath;
  final String? name;
  final String? country;
  final String? rating;
  final int? review;
  final double? price;

  const ServicesWidget(
      {super.key,
      this.serviceTitle,
      this.imagePath,
      this.name,
      this.country,
      this.rating,
      this.price,
      this.review});
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Container(
        height: h * 0.43,
        width: w * 0.455,
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
        child: Column(
          children: [
            Container(
              height: h * 0.25,
              width: w * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(imagePath!))),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$serviceTitle",
                    style: const TextStyle(fontSize: 16, fontFamily: interBold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "$name",
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: interRegular),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        "$country",
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            fontFamily: interThin),
                      ),
                      const Icon(
                        Icons.location_pin,
                        color: Colors.red,
                        size: 16,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade300,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "$rating",
                        style: const TextStyle(
                            fontFamily: interRegular, fontSize: 12),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "($review Reviews)",
                        style: const TextStyle(
                            fontFamily: interRegular, fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$price\$",
                    style: const TextStyle(fontSize: 17, fontFamily: interBold),
                  ),
                  CustombuttonWidget(
                    onPressed: () {},
                    buttonBackgroundColor: appcolor,
                    buttonHeight: h * 0.04,
                    buttonWidth: 85,
                    buttonborderRadius: 20,
                    child: const Text(
                      "Book Now",
                      style: TextStyle(fontSize: 9),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
