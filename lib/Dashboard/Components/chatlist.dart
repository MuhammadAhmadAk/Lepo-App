import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/fonts.dart';
import 'package:lepo_project/Constants/images.dart';

import '../../Constants/colors.dart';
class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {

        return Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){

              },
              child: ListTile(
                style: ListTileStyle.drawer,
                leading:  Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(profileImg),
                      radius: 28,
                    ),
                    Positioned(
                      right: 2,
                      top: 4,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
                title:  const Text(
                 " David",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),

                ),
                subtitle: Row(
                  children: [
                    const SizedBox(width: 5,),
                    const Text(
                      "nice to meer you,",

                    ),
                  ],
                ) ,
                trailing:const Padding(
                  padding: EdgeInsets.only(top: 2.0),
                  child: Text(
                    "1 min ago",
                  )  ,

                ),),
            ),
            const Divider(),
          ],
        );
      },
      itemCount:15,
    );
  }
}