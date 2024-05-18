import 'package:flutter/material.dart';
import 'package:nectar/view/core.dart';
import 'package:nectar/view/homePage.dart';
class welcomePage extends StatelessWidget {
   welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/person.png"),fit:BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 250,),
          Container(width: 43,
          height: 38,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/carrot.png"))
        ),
          
          ),
           Container(width: 257,
          height: 90,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Welcome to our store.png"))
        ),
          
          ),
        
  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 323,
            height: 15,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Ger your groceries in as fast as one hour.png"))
                    ),
            
            ),
          ),
           InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>core()));
            },
             child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 353,
              height: 67,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/greenRec.png"))
                      ),
                      child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
              
              ),
                       ),
           ),

        ],),
      ),

    );
  }
}