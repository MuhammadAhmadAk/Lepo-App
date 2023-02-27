import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import '../../../Components/Text_Widgets/PrimaryTextWidget.dart';

class ProfileReviewScreen extends StatefulWidget {
  const ProfileReviewScreen({Key? key}) : super(key: key);

  @override
  State<ProfileReviewScreen> createState() => _ProfileReviewScreenState();
}

class _ProfileReviewScreenState extends State<ProfileReviewScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 19.0, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: appcolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            FontAwesomeIcons.arrowLeft,
                            size: 18,
                            color: Colors.white,
                          ),
                        )),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage(profileImg),
                          radius: 40,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        const Text(
                          "John",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "(321 reviews)",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    Container()
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Overall Rating",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Service as Describe",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Would Reccomended",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Customer Reviews",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: h * 0.75,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(profileImg),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              Column(
                                children: [
                                  Text("John Alberto"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RatingBar.builder(
                                        tapOnlyMode: true,
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        unratedColor:
                                        Colors.amber.withAlpha(50),
                                        itemCount: 5,
                                        itemSize: 13.0,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {},
                                        updateOnDrag: false,
                                      ),
                                      Text("(4.6)"),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: w * 0.014,
                              ),
                            ],
                          ),
                          //review Contents
                          SizedBox(
                            height: h * 0.02,
                          ),
                          PrimaryTextWidget(
                            text:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                            maxLines: 3,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
