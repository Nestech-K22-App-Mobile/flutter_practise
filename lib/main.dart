import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num myNumber = 1;
  int newIntegerNumber = 2;
  int newMyNumber = 3;
  double newDoubleNumber = 3.0;
  String newStringValue = 'Hello Flutter';
  String newStringValueOther = 'I am studying';
  String valueTestString = """new Value
  value value
  value """;
  bool isIntegerNumber = false;
  var customValue = '';
  dynamic dynamicValue = 3.0123;

  void checkedType() {
    print(dynamicValue.runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$myNumber',
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                'so nguyen: $newIntegerNumber',
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                'so thuc: $newDoubleNumber',
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                '$newStringValue $newStringValueOther',
                style: const TextStyle(fontSize: 35),
              ),
              Text(
                valueTestString,
                style: const TextStyle(fontSize: 35),
              ),
              Text(
                'var: $customValue',
                style: const TextStyle(fontSize: 35),
              ),
              Text(
                'dynamic value: $dynamicValue',
                style: const TextStyle(fontSize: 35),
              ),
              TextButton(onPressed: checkedType, child: const Text('Check type button'))
            ],
          ),
        ),
      ),
    );
  }
}
