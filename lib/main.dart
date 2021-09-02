import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/login.dart';
import 'package:mobileappweek1/screen/register.dart';
import 'screen/home.dart';
import 'screen/index.dart';



void main() => runApp(KMUTNB());


class KMUTNB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Workshop(),
      routes: {
        'Login' : (context) => Login(),
        'Register' : (context) => Register(),
      },
      theme: ThemeData(
        primaryColor: primaryColor,
        secondaryHeaderColor: primaryColor,
      ),
      );
  }
}