import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';

class TimeBoxWidget extends StatefulWidget {
  final String timeText;
  final String? timeDuration;
  final double? height;
  final double? width;
  final double? fontSize;
  final double? timeFontSize;
  final double? borderRadius;

  const TimeBoxWidget(
      {super.key, required this.timeText,  this.timeDuration, this.height, this.width, this.fontSize, this.timeFontSize, this.borderRadius});

  @override
  State<TimeBoxWidget> createState() => _TimeBoxWidgetState();
}

class _TimeBoxWidgetState extends State<TimeBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.height??70,
          width: widget.width??70,
          decoration: BoxDecoration(
              color: purpleColors, borderRadius: BorderRadius.circular(widget.borderRadius??16)),
          child: Center(
            child: Text(
              widget.timeText,
              style:  TextStyle(fontSize:widget.fontSize??30, color: whiteColor),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          widget.timeDuration!,
          style: TextStyle(fontSize: widget.timeFontSize??20, color: purpleColors),
        )
      ],
    );
  }
}
