import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _isPressed = false;
  int _a = 3;
  int _b = 5;
  int _tong = 0;
  int _hieu = 0;
  double tich = 0;
  double thuong = 0;

  void calculateAction() {
    setState(() {
      _isPressed = !_isPressed;
      _tong = _a + _b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isPressed ? Colors.pink : Colors.amberAccent,
        centerTitle: true,
        title: const Text(
          'Debug My Main App',
          style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            Text(_isPressed ? 'New Hello, new World' : 'Hello World'),
            Text(_a.toString()),
            Text(_b.toString()),
            Text(_tong.toString()),
            TextButton(
              onPressed: calculateAction,
              child: const Text('press calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
