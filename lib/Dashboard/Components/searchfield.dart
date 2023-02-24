import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({super.key});

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: h * 0.058,
            width: w * 0.9,
            decoration: BoxDecoration(
                color: const Color(0xfff2f3f3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3.0)]),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "Search for Services.......",
                        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                        fillColor: const Color(0xfff2f3f3),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: appcolor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xfff2f3f3)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xfff2f3f3)),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color(0xfff2f3f3),
                        borderRadius: BorderRadius.circular(4.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 1.0)
                        ]),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Filter",
                            style: TextStyle(
                                fontSize: 15,
                                color: appcolor,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.sort,
                            size: 30,
                            color: appcolor,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
