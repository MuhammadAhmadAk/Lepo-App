import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';

class TimeBoxWidget extends StatefulWidget {
  final String timeText;
  final String timeDuration;

  const TimeBoxWidget(
      {super.key, required this.timeText, required this.timeDuration});

  @override
  State<TimeBoxWidget> createState() => _TimeBoxWidgetState();
}

class _TimeBoxWidgetState extends State<TimeBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: purpleColors, borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Text(
              widget.timeText,
              style: TextStyle(fontSize: 30, color: whiteColor),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          widget.timeDuration,
          style: TextStyle(fontSize: 20, color: purpleColors),
        )
      ],
    );
  }
}
