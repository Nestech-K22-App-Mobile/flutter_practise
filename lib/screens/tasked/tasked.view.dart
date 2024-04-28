import 'package:flutter/material.dart';

class TaskedView extends StatefulWidget {
  const TaskedView({super.key});

  @override
  State<TaskedView> createState() => _TaskedViewState();
}

class _TaskedViewState extends State<TaskedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 48.0,
          ),
          child: const Text(
            'Tasked',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
