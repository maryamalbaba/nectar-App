import 'package:flutter/material.dart';

import 'package:nectar/view/pages/favoraitecart.dart';
import 'package:nectar/view/pages/order.dart';
import 'package:provider/provider.dart';

num counter = 0;

class mybasket extends StatefulWidget {
  mybasket({super.key});

  @override
  State<mybasket> createState() => _mybasketState();
}

class _mybasketState extends State<mybasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: 414,
                        //  height: 391,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    " Checkout",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.close),
                                )
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(255, 201, 200, 200),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Promo Code ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 165),
                                  child: Text(
                                    "Pick discount ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Icon(Icons.arrow_right),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Color.fromARGB(255, 201, 200, 200),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Payment ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 260),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/pay.png"))),
                                  ),
                                ),
                                //   Icon(Icons.arrow_back),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Color.fromARGB(255, 201, 200, 200),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Delivery ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 188),
                                  child: Text(
                                    "select Method ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Icon(Icons.arrow_right),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Color.fromARGB(255, 201, 200, 200),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Promo Code ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 210),
                                      child: Text(
                                        "\$13.97 ",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Icon(Icons.arrow_right),
                                  ],
                                ),
                                //    Icon(Icons.arrow_right)
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(255, 201, 200, 200),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OrderPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 353,
                                  height: 67,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/greenRec.png"))),
                                  child: Center(
                                      child: Text(
                                    "Place Order",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Go to Checkout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "My Cart",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    //    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 63,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(items[index].imagevegetable))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(items[index].title),
                              items[index].quantity,
                              SizedBox(
                                  height: 90,
                                  child: Center(
                                    child: Row(
                                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              // counter=counter-1;
                                              if (counter == 0) {
                                                items[index].itemconter = 0;
                                              } else {
                                                items[index].itemconter =
                                                    counter - 1;
                                              }
                                              ;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                border: Border.all(width: 0.1)),
                                            width: 30,
                                            height: 30,
                                            child: Icon(Icons.remove),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "${items[index].itemconter}"),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              items[index].itemconter =
                                                  counter + 1;
                                              ;
                                            });
                                          },
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                border: Border.all(width: 0.1)),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          //  height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Icon(Icons.close),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(),
                                    child: Text("\$" + items[index].price),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    endIndent: 20,
                    indent: 20,
                  )
                ],
              );
            }));
  }
}
  // imagevegetable: "assets/genger.png",
  //     title: 'Bell Pepper Red',
  //     price: 4.99,
  //     quantity: Text(
  //       '1 kg Price',
  //       style: TextStyle(color: Colors.grey),