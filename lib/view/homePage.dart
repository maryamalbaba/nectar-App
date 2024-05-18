// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/view/classifications/Beverages.dart';
import 'package:nectar/view/pages/favoraitecart.dart';


class homePage extends StatelessWidget {
  homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          
          centerTitle: true,
          title: Text("Find product"),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 7,
          ),
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>vegetablePage()));
              },
              child: Container(
                height: 189,
                width: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/vegetablaclass.png"))),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 189,
                width: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/oilClassfication.png"))),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  height: 189,
                  width: 174,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/oilClassfication.png"))),
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 72,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/meatimage.png"))),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 189,
                width: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Bakeryclass.png"))),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  height: 189,
                  width: 174,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/dairycontainer.png"))),
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 72,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/milkyimage.png"))),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => beverage()));
              },
              child: Container(
                height: 189,
                width: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/drinksclass.png"))),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 189,
                width: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/vegetablaclass.png"))),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 189,
                width: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/vegetablaclass.png"))),
              ),
            ),
          ],
        ));
  }
}

class Clasification {
  final String image;
  final String image2;
  final Color color1;
  Clasification({
    required this.image,
    required this.image2,
    required this.color1,
  });
}
