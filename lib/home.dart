import 'package:flutter/material.dart';
import 'package:shared_perfrence/loginpage.dart';
import 'package:shared_perfrence/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),backgroundColor: Colors.blueAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("HOME",style: TextStyle(fontSize: 50,color: Colors.red),)),
          Center(
            child: ElevatedButton(onPressed: () async {

              var sharedpref = await SharedPreferences.getInstance();
              sharedpref.remove(splashState.KEYLOGIN);

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => loginpage(),
                  ));
            }, child: Text("LOG OUT")),
          )        ],
      ),
    );
  }
}
