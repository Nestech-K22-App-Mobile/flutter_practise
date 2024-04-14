import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyAppBar extends StatelessWidget {
  final String? titleBar;

  const MyAppBar({super.key,this.titleBar});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return PreferredSize(preferredSize: Size(widthScreen,200), child: Row(children: [
      Text(titleBar.toString(),style:TextStyle(fontSize: 16.dp),)
    ],),);
  }
}
