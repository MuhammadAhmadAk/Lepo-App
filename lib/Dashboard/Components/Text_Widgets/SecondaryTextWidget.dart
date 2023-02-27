// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class SecondaryTextWidget extends StatelessWidget {
  String text;
  int? maxLines;
  String? fontFamily;
  double? fontSize;
  TextOverflow? overflow;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? textAlign;
  SecondaryTextWidget({
    Key? key,
    required this.text,
    this.maxLines,
    this.fontFamily,
    this.overflow,
    this.fontWeight,
    this.fontSize,
    this.color,
     this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      textAlign:textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.visible,
      style: TextStyle(
          fontSize: fontSize ?? 14,
          fontFamily: fontFamily??"NotoSansKR",
          fontWeight: FontWeight.w400,
          color: color ?? Colors.black.withOpacity(0.5),),
    );
  }
}
