import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';

class ProfileTextField extends StatelessWidget {
  final String? label;
  final String? labelInfo;
  final TextEditingController? controller;
  final TextInputType? inputType;
  const ProfileTextField(
      {Key? key,
      required this.label,
      required this.labelInfo,
      this.controller,
      required this.inputType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label!,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            labelInfo!,
            style: const TextStyle(
                fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          TextField(
            keyboardType: inputType,
            controller: controller,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
