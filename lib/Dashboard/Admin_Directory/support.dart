import 'package:bubble/bubble.dart';
import 'package:bubble/issue_clipper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Constants/images.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  List<String> _messages = [];

  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 12),
            child: AppbarWidget(title: "Support", color: appcolor, buttonColor: appcolor),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(

                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profileImg),
                    ),
                    Expanded(
                      child: Bubble(
                        radius:const Radius.circular(10),
                        margin: const BubbleEdges.symmetric(horizontal: 15,vertical: 5),
                        alignment: Alignment.topLeft,
                        nip: BubbleNip.leftTop,
                        color: appcolor,
                        child:  Expanded(child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Support",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: whiteColor),),
                             const SizedBox(height: 20,),
                              Text(_messages[index],maxLines: 10,style: TextStyle(color: whiteColor)),

                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.image,
                      color: appcolor,
                    ),
                    Icon(FontAwesomeIcons.ellipsisVertical, color: appcolor),
                    Icon(Icons.camera_alt, color: appcolor),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Enter a message',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: appcolor),
                  onPressed: () {
                    setState(() {
                      _messages.add(_textController.text);
                      _textController.clear();
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
