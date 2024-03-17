import 'package:flutter/material.dart';
import '../resource/fonts.dart' as fonts_constants;
import '../resource/images.dart' as images_constants;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _step = 1;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void goBack() {
    Navigator.pop(context);
  }

  void onContinue() {
    if (_step >= 1 && _step <= 5) {
      setState(() {
        _step += 1;
      });
    }
  }

  void onPrevious() {
    if (_step <= 5) {
      setState(() {
        _step -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(images_constants.imgRegister),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24.0),
                    child: const Text(
                      'Create account',
                      style: TextStyle(
                        fontFamily: fonts_constants.fontBold,
                        fontSize: 24.0,
                        color: Color.fromRGBO(54, 69, 79, 1),
                      ),
                    ),
                  ),
                  Builder(builder: (context) {
                    switch (_step) {
                      case 1:
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email'),
                              TextField(
                                decoration: InputDecoration(hintText: 'abc@email.com'),
                                controller: emailController,
                              ),
                            ],
                          ),
                        );

                      case 2:
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name'),
                              TextField(
                                decoration: InputDecoration(hintText: 'abc@email.com'),
                                controller: nameController,
                              ),
                            ],
                          ),
                        );

                      case 3:
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Birthday'),
                              TextField(
                                decoration: InputDecoration(hintText: 'abc@email.com'),
                                controller: birthdayController,
                              ),
                            ],
                          ),
                        );

                      case 4:
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Gender'),
                              TextField(
                                decoration: InputDecoration(hintText: 'abc@email.com'),
                                controller: genderController,
                              ),
                            ],
                          ),
                        );

                      case 5:
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Password'),
                              TextField(
                                decoration: InputDecoration(hintText: 'abc@email.com'),
                                controller: passwordController,
                              ),
                            ],
                          ),
                        );

                      default:
                        return Text("Empty..");
                    }
                  }),
                  Container(
                    child: TextButton(
                      onPressed: onContinue,
                      child: Text('Continue'),
                    ),
                  ),
                  _step > 1
                      ? Container(
                          child: TextButton(
                            onPressed: onPrevious,
                            child: Text('Previous'),
                          ),
                        )
                      : Text('')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
