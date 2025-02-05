import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_perfrence/home.dart';
import 'package:shared_perfrence/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();

    wheretogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("YOUR SPLASH SCREEN")),
    );
  }

  void wheretogo() async {
    var sharedpref = await SharedPreferences.getInstance();

    var isloggedin = sharedpref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 5), () {
      //aa check karse ke userkyre pn login karyu che agar karyu hase to aa vado code thase ane jo nai karyu hoi to niche vado etle ke else vado

      if (isloggedin != null) {
        //have user ae ekvar login karyu che etle ke isloggedin ni value null nathi to check karse ke user che e already login che ke nai
        //agar login hase to if vado code else ene logout karyu hase to else vado code

        if (isloggedin) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => home(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => loginpage(),
              ));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => loginpage(),
            ));
      }
    });
  }
}
