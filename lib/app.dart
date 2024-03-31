import 'package:flutter/material.dart';
import 'package:template_dummy/pages/over_view.dart';

import 'pages/on_boarding.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingPage(),
        '/over-view': (context) => OverViewPage(),
      },
    );
  }
}
