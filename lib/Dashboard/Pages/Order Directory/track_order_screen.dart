import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/custom_button.dart';
import 'package:lepo_project/Dashboard/Components/timebox.dart';
class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    double h= MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;

    return Scaffold(body: SafeArea(child: Stack(children: [
      Column(children: [
        Container(
          width: w,
          height: h*0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgMap)
              )
          ),
        ),
        SizedBox(height: h*0.06),
        Container(
          height: 55,
          width: 320,
          decoration: BoxDecoration(
              color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 2.0
            )]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h*0.01),
                  Text("Contact Provider",style: TextStyle(fontSize: 17,color: purpleColors,fontWeight: FontWeight.bold),),
                  Text("+92 300-0000000",style: TextStyle(fontSize: 15,color: purpleColors),),
                ],),
                Icon(Icons.message_outlined,color: purpleColors,)
              ],
            ),
          ),
        ),
        SizedBox(height: h*0.04),
        Container(
          height: 55,
          width: 320,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 2.0
              )]
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal:17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Customer Support",style: TextStyle(fontSize: 17,color: purpleColors,fontWeight: FontWeight.bold),),

                Icon(Icons.message_outlined,color: purpleColors,)
              ],
            ),
          ),
        ),
        SizedBox(height: h*0.03),
        Container(
          height: 200,
          width: 320,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 2.0
              )]
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SizedBox(height: h*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Contact Provider",style: TextStyle(fontSize: 17,color: purpleColors,fontWeight: FontWeight.bold),),
                    Text("#67",style: TextStyle(fontSize: 17,color: purpleColors,fontWeight: FontWeight.bold),),

                  ],
                ),
                //SizedBox(height: h*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Status",style: TextStyle(fontSize: 17,color: purpleColors,fontWeight: FontWeight.bold),),
                    Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: appcolor,
                          borderRadius: BorderRadius.circular(8)
                              
                        ),
                        child: Center(child: Text("Ready",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),))),

                  ],
                ),
                //SizedBox(height: h*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Status",style: TextStyle(fontSize: 17,color: purpleColors,fontWeight: FontWeight.bold),),
                    Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: appcolor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("Not Paid",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),))),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: h*0.03),
        CustombuttonWidget(
            buttonWidth: 300,
            buttonBackgroundColor: appcolor,
            onPressed: (){}, child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: h*0.03),
            Text("Start"),
            Icon(Icons.arrow_forward_ios)
          ],
        ))
      ],),

      Positioned(
        left:w*0.08 ,
        top: h/4.2,
        child: Container(
          width: w*0.85,
          height: h*0.145,
          decoration: BoxDecoration(
             color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 2.0,
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text("Massage Service",style: TextStyle(fontSize: 20,color: purpleColors,fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text("John",style: TextStyle(),),
                  SizedBox(height: 2,),
                  Row(
                  children: [
                    Text("Switzerland",style: TextStyle(fontFamily: interRegular,fontSize: 13),),
                    SizedBox(width: 3,),
                    Image.asset(icLocation,height: 16,color: Colors.red,)
                  ],
                ),
                  SizedBox(height: 3,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    SizedBox(width: 4,),
                    TimeBoxWidget(timeText: "04",timeDuration: "Day",height: 30,width: 30,fontSize: 14,timeFontSize: 10,borderRadius: 10,),
                    SizedBox(width: 4,),
                    TimeBoxWidget(timeText: "04",timeDuration: "Hour",height: 30,width: 30,fontSize: 14,timeFontSize: 10,borderRadius: 10,),
                    SizedBox(width: 4,),
                    TimeBoxWidget(timeText: "04",timeDuration: "Minute",height: 30,width: 30,fontSize: 14,timeFontSize: 10,borderRadius: 10,),

                  ],)

              ],),
              Container(height: 100,width: 100,
                  decoration: BoxDecoration(
                    color: appcolor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                child: Column(
                  children: const [
                    SizedBox(height: 8),

                    Text("9:57",style: TextStyle(color:whiteColor,fontFamily: interRegular,fontSize: 20),),
                    SizedBox(height: 8),

                    Text("27",style: TextStyle(color:whiteColor,fontFamily: interRegular,fontSize: 20),),
                    SizedBox(height: 8),

                    Text("Feb",style: TextStyle(color:whiteColor,fontFamily: interRegular,fontSize: 20),)
                  ],
                ),
                  )
            ],
          ),
        ),
      )
    ],),),);
  }
}
