import 'package:flutter/material.dart';
import 'package:nectar/view/pages/favoraitecart.dart';
import 'package:provider/provider.dart';

class favoreitePage extends StatelessWidget {
  const favoreitePage({super.key});

  @override
  Widget build(BuildContext context) {
        return Consumer<favoraite_cart>(builder: (context,cart, child) {
      return Scaffold(
          body: cart.basketIteams.length == 0
              ? Center(child: Text("no iteams in cart"))
              : ListView.builder(
                itemCount: cart.basketIteams.length,
                itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(
                    title:Text(
                      context.watch<favoraite_cart>().basketIteams[index].title,
                    //  Cart.basketIteams[index].title
                    )
                    ),
                );
              }))
              );
    });
}}