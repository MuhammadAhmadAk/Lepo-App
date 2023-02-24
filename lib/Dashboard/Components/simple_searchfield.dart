import 'package:flutter/material.dart';
class SimpleSearchField extends StatefulWidget {
  const SimpleSearchField({Key? key}) : super(key: key);

  @override
  State<SimpleSearchField> createState() => _SimpleSearchFieldState();
}

class _SimpleSearchFieldState extends State<SimpleSearchField> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.058,
        width: w * 0.9,
        decoration: BoxDecoration(
          color: const Color(0xfff2f3f3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                hintText: "Search",
                hintStyle: const TextStyle(
                    fontSize: 14, color: Colors.grey),
                fillColor: const Color(0xfff2f3f3),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color(0xfff2f3f3)),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color(0xfff2f3f3)),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
        ));
  }
}
