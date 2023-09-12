import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.popAndPushNamed(context, 'login');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/splash.jpg')),
        ),
      )),
    );
  }
}
