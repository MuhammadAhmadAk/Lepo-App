
import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:lepo_project/Dashboard/Components/appbar.dart';
import 'package:lepo_project/Dashboard/Components/chatlist.dart';
import 'package:lepo_project/Dashboard/Components/online_chats.dart';
import 'package:lepo_project/Dashboard/Components/simple_searchfield.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 215,
              child: Column(
                children: const [
                  AppbarWidget(title: "Chat",color: appcolor,buttonColor: appcolor,),
                  SizedBox(height: 10,),
                  SimpleSearchField(),
                  SizedBox(height: 15,),
                  Expanded(
                    flex: 1,
                      child: OnlineChat())
                ],

              ),
            ),
            const SizedBox(
              height: 20,
            ),
const Expanded(child: ChatListView())

          ],
        ),
      ),
    );
  }
}
