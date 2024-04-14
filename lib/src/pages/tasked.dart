import 'package:flutter/material.dart';

class TaskedScreen extends StatefulWidget {
  const TaskedScreen({super.key});

  @override
  State<TaskedScreen> createState() => _TaskedScreenState();
}

class _TaskedScreenState extends State<TaskedScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(widthScreen, heightScreen * 0.2),
        child: Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('123'),
                Text('123'),
              ],
            )),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Text('1233445435'),
            Text('1233445435'),
            Text('1233445435'),
            Text('1233445435'),
          ],
        ),
      ),
    );
  }
}
