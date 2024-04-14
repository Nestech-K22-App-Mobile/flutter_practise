import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCreated = false;
  bool isPressed = false;
  bool isDone = false;
  bool isDelete = false;

  void onTaskPressed() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  void onTaskDone() {
    setState(() {
      isDone = !isDone;
    });
  }

  void onCreatedTask() {
    setState(() {
      isCreated = !isCreated;
    });
  }

  void onDeleteTask() {
    setState(() {
      isDelete = !isDelete;
    });
  }

  Widget renderNewTask() {
    if (isCreated == true) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GestureDetector(
          onTap: () {
            onTaskPressed();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  renderCheckbox(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'typography',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        decoration: isDone == true
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              renderRightTask(),
            ],
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }

  Widget renderCheckbox() {
    if (isPressed) {
      return Image.asset('assets/ic_checkBoxDone.png');
    } else {
      return Image.asset('assets/ic_checkBox.png');
    }
  }

  Widget renderRightTask() {
    if (isPressed) {
      return Row(
        children: [
          IconButton(
            onPressed: onTaskDone,
            icon: Icon(Icons.check),
          ),
          IconButton(
            onPressed: onDeleteTask,
            icon: Icon(Icons.delete),
          ),
        ],
      );
    } else {
      return SizedBox();
    }
  }

  Widget renderTaskDelete() {
    if (isDelete) {
      return SizedBox();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isDelete ? renderTaskDelete() : renderNewTask(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onCreatedTask,
          child: Text(
            '+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
