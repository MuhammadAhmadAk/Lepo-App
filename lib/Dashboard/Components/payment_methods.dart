import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/images.dart';
import 'Text_Widgets/PrimaryTextWidget.dart';
import 'Text_Widgets/SecondaryTextWidget.dart';

class PaymentMethodWidget extends StatefulWidget {
  final String? value;
  final double height;
  final String? imagePath;
  final String?title;
  final String?description;
  const PaymentMethodWidget({Key? key, required this.value, required this.imagePath, required this.title, required this.description, required this.height}) : super(key: key);

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  String? payment;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Container(
        height:h*0.09 ,
        width: w*0.95,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 1.0,
              offset: Offset.fromDirection(7)


          )],


        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Radio(
                value: widget.value,
                groupValue: payment,
                onChanged: (value){
                  setState(() {

                      payment=value.toString();



                  }); //selected value
                }
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: PrimaryTextWidget(
                    text: widget.title!,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: SecondaryTextWidget(
                    fontSize: 12,
                    text: widget.description!,maxLines: 2,),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(widget.imagePath!,height:widget.height,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
