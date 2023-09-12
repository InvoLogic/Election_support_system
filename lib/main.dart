import 'package:ess/add_voter.dart';
import 'package:ess/home.dart';
import 'package:ess/login.dart';
import 'package:ess/reg.dart';
import 'package:ess/splash.dart';
import 'package:ess/voter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'voter',
    routes: {
      'home': (context) => home(),
      'login': (context) => Mylogin(),
      'register': (context) => Register(),
      'splash': (context) => splash(),
      'voter': (context) => voters(),
    },
  ));
}

void show() {
  var Context;
  showDialog(
    context: Context,
    builder: (_) {
      return AlertDialog(
        content: addvoter(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
    },
  );
}
