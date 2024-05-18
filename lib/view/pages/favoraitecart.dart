// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:nectar/view/pages/favoreitePage.dart';

class favoraite_cart extends ChangeNotifier{
  List<Iteam> listIteam = [];
  num totalPrice = 0;

  void add(Iteam iteam) {
    listIteam.add(iteam);
 //   totalPrice += iteam.price;
    notifyListeners();
  }

  void remove(Iteam iteam) {
    totalPrice -= iteam.price;
    listIteam.remove(iteam);
    notifyListeners();
  }

  num get price {
    return totalPrice;
  }
  num get count {
    return listIteam.length;
  }
  List<Iteam> get basketIteams {
    return listIteam;
  }
}

class Iteam {
  final String title;
  final Widget quantity;
  final dynamic price;
  final String imagevegetable;
    dynamic itemconter;
  Iteam({
    required this.title,
    required this.quantity,
    required this.price,
    required this.imagevegetable,
    required this.itemconter,
  });
}

class vegetablePage extends StatelessWidget {
  vegetablePage({super.key});
favoraite_cart c=favoraite_cart();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
       floatingActionButtonLocation:    
      FloatingActionButtonLocation.centerFloat,
     appBar: AppBar(),
     body: GridView.builder(
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
       itemCount: items.length,
       itemBuilder: (BuildContext context, int index) {
         return Container(
           width: 280,
           height: 190,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               border: Border.all(width: 0.2)),
           child: Column(
             children: [
               Container(
               
                 width: 100,
               height: 50,
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(items[index].imagevegetable))),
               ),
               Text(items[index].title),
               items[index].quantity,
               Text(items[index].price.toString()),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Align(
                   alignment: Alignment.centerRight,
                   child: Container(
                     height: 38,
                     width: 35,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage("assets/plusRec.png"))),
                     child: Center(
                       child: IconButton(
                           onPressed: () {
                         //    c.add(items[index]);
                              context.read<favoraite_cart>().add(items[index]);
                           },
                           icon: Icon(
                             Icons.add,
                             color: Colors.white,
                             size: 20,
                           )),
                     ),
                   ),
                 ),
               )
             ],
           ),
         );
       },
     ),
          );
  }
}
 List<Iteam> items = [
    Iteam(
      imagevegetable: "assets/genger.png",
      title: 'Bell Pepper Red',
      price: "4.99",
      quantity: Text(
        '1 kg Price',
        style: TextStyle(color: Colors.grey),
      ), itemconter: 0,
    ),
    Iteam(
        imagevegetable: "assets/egs.png",
        title: 'Egg chicken Red',
        price: "1.99",
        quantity: Text(
          '4pcs,Price',
          style: TextStyle(color: Colors.grey),
        ), itemconter: 0),
    Iteam(
      
        imagevegetable: "assets/banana.png",
        title: 'Organic Bananas',
        price: "3.99",
        quantity: Text(
          '12 kg, Price',
          style: TextStyle(color: Colors.grey),
        ), itemconter: 0),
    Iteam(
      title: 'Ginger',
      price: "2.99",
      quantity: Text(
        '250gm,Price',
        style: TextStyle(color: Colors.grey),
      ),
      imagevegetable: 'assets/hotpepper.png', itemconter: 0,
    ),
  ];