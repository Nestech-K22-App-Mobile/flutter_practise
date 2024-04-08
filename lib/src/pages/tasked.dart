import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/resource.dart';

class TaskedScreen extends StatefulWidget {
  const TaskedScreen({super.key});

  @override
  State<TaskedScreen> createState() => _TaskedScreenState();
}

class _TaskedScreenState extends State<TaskedScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 16.dp,
          ),
          child: Text(
            'Tasked',
            style: GoogleFonts.beVietnamPro(
              textStyle: TextStyle(
                color: ResourceValues.blackDefault,
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
            ),
          ),
        ),
        leadingWidth: 200,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isChecked:
                      !isChecked;
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(isChecked ? Icons.check_box : Icons.abc),
                        Text(
                          'Task new',
                          style: GoogleFonts.beVietnamPro(),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_downward_outlined,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
