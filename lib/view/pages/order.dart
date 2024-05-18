import 'package:flutter/material.dart';
import 'package:nectar/view/homepage.dart';

class OrderPage extends StatelessWidget {
   OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
      height: 20,

    ),
    Center(
      child: Container(
        width: 200,
        height: 200,
      decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/true.png"))),
      ),
    ),
      SizedBox(height: 40,),
    Center(child: Text("Your Order has been \n          accapted",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)),

    Center(child: Text("Your items has been placed and is an \n        it is way to being processed",style: TextStyle(fontSize: 18,color: Colors.grey),)),
  SizedBox(height: 100,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 353,
              height: 67,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/greenRec.png"))
                      ),
                      child: Center(child: Text("Track Order",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
              
              ),

                       ),
                       
                       TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>homePage() ));
                       }, child: Text("Back to home",style: TextStyle(color: Colors.black),))
           


  ],
),

    );
  }
}