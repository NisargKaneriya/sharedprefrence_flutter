import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_perfrence/home.dart';
import 'package:shared_perfrence/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Name",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40),),
           TextFormField(
             decoration: InputDecoration(
               contentPadding: EdgeInsets.all(20),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black, width: 3),
                 borderRadius: BorderRadius.circular(50),
               ),

               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.red, width: 3),
                 borderRadius: BorderRadius.circular(50),
               ),

             ),
           ),
           Text("Age",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40),),
           TextFormField(
             decoration: InputDecoration(
               contentPadding: EdgeInsets.all(20),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black, width: 3),
                 borderRadius: BorderRadius.circular(50),
               ),

               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.red, width: 3),
                 borderRadius: BorderRadius.circular(50),
               ),

             ),
           ),
           SizedBox(height: 15,),
           // Row(
           //   mainAxisAlignment: MainAxisAlignment.center,
           //   children: [
           //     Text("Remind me"),
           //     Checkbox(onChanged: (value) => (){},value: true),
           //   ],
           // ),
           SizedBox(height: 15),
           ElevatedButton(onPressed: () async {
             var sharedpref = await SharedPreferences.getInstance();
             sharedpref.setBool(splashState.KEYLOGIN, true);

             Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(
                   builder: (context) => home(),
                 ));
           }, child: Text("Remind Me"))
         ],
       ),
     )
    );
  }
}
