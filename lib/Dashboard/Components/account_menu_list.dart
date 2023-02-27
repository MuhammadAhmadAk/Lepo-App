import 'package:flutter/material.dart';

class AccountMenuList extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  final IconData? listIcon;

  const AccountMenuList({Key? key, required this.title, this.onTap,required this.listIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0,vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(listIcon,size: 33,),
            SizedBox(width: 23,),
            Text("|",style: TextStyle(fontSize: 35,color: Colors.black),),
            SizedBox(width: 23,),
            Expanded(child: Text("$title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
            Icon(Icons.arrow_forward_ios,size: 23,)
          ],
        ),
      ),
    );
  }
}
