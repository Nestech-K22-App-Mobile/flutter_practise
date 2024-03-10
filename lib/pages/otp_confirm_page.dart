import 'package:flutter/material.dart';

class OTPConfirmPage extends StatefulWidget {
  const OTPConfirmPage({super.key});

  @override
  State<OTPConfirmPage> createState() => _OTPConfirmPageState();
}

class _OTPConfirmPageState extends State<OTPConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('OTP Confirm Page'),
      ),
    );
  }
}
