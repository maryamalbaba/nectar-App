

import 'package:flutter/material.dart';
import 'package:nectar/components/colors.dart';
import 'package:nectar/view/core.dart';
import 'package:nectar/view/homepage.dart';
import 'package:nectar/view/welcome.dart';

class splashscreen extends StatefulWidget {
   splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
void initState(){
  Future.delayed(Duration(seconds: 2),
 () {Navigator.push(context, MaterialPageRoute(builder: (context)=>welcomePage()));});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: green,

        ),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 267,
              height:63 ,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/logo.png"))),
            
            ),
              Container(
              width: 192,
              height:18 ,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/online groceriet.png"))),
            
            ),
            
          ],
        ),),
       )
    );
  }
}