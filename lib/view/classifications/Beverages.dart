// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/view/homePage.dart';

List<drinkcontainer> drinkList = [
  drinkcontainer(
    selectedIndex: 0,
    drinkimage: "assets/coke.png",
    Price: 'assets/egihthundred.png',
    drinkname: "Diet can",
    ml: Text(
      "355ml\nPrice",
      style: TextStyle(color: Colors.grey),
    ),
  ),
  drinkcontainer(
      selectedIndex: 1,
      drinkimage: "assets/sprite.png",
      drinkname: "Sprite Can",
      ml: Text(
        "325ml\nPrice",
        style: TextStyle(color: Colors.grey),
      ),
      Price: "assets/fivehundred.png"),
  drinkcontainer(
      selectedIndex: 2,
      drinkimage: "assets/treetopred.png",
      drinkname: "Apple &Gragh\n Juice",
      ml: Text(
        "2Lml\nPrice",
        style: TextStyle(color: Colors.grey),
      ),
      Price: "assets/fivehundred.png"),
  drinkcontainer(
      selectedIndex: 3,
      drinkimage: "assets/orange.png",
      drinkname: "Orange Juice",
      ml: Text(
        "325ml\nPrice",
        style: TextStyle(color: Colors.grey),
      ),
      Price: "assets/egihthundred.png"),
  drinkcontainer(
      selectedIndex: 4,
      drinkname: "Coca Cola Car",
      ml: Text(
        "325ml\nPrice",
        style: TextStyle(color: Colors.grey),
      ),
      drinkimage: "assets/cocacola.png",
      Price: "assets/fourhundred.png"),
  drinkcontainer(
      selectedIndex: 5,
      drinkname: "Pepsi Can",
      ml: Text(
        "325ml\nPrice",
        style: TextStyle(color: Colors.grey),
      ),
      drinkimage: "assets/pepsi.png",
      Price: "assets/fourhundred.png"),
];

class beverage extends StatelessWidget {
  beverage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 10,
          width: 12,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
            },
            child: Icon(Icons.arrow_back_ios))
          
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
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
                                          child: Text("Add",style: TextStyle(fontWeight: FontWeight.w600),),
                                          
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.close),
                                        )
                                      ],
                                    ),
                                    Divider(
                                    color:Color.fromARGB(255, 201, 200, 200),
                                    ),
                                    SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 316),
                                      child: Text("Name",style: TextStyle(color: Colors.grey),),
                                    ),
                                      SizedBox(height: 5,),
                                     Divider(
                                  color:Color.fromARGB(255, 201, 200, 200),
                                    ),
                                      SizedBox(height: 5,),
                                     Padding(
                                        padding: const EdgeInsets.only(right: 280),
                                       child: Text("Description",style: TextStyle(color: Colors.grey),),
                                     ),
                                       SizedBox(height: 5,),
                                      Divider(
                                      color:Color.fromARGB(255, 201, 200, 200),
                                    ),  SizedBox(height: 5,),
                                     Padding(
                                        padding: const EdgeInsets.only(right: 316),
                                       child: Text("Price",style: TextStyle(color: Colors.grey),),
                                     ),  SizedBox(height: 5,),
                                      Divider(
                                      color: Color.fromARGB(255, 201, 200, 200),
                                    ),
                                      SizedBox(height: 5,),
                                       Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                           padding: const EdgeInsets.only(left: 20),
                                          child: Text("Image",style: TextStyle(color: Colors.grey),),
                                        ),
                                        Icon(Icons.arrow_right)
                                      ],
                                    ),
                                      Divider(
                         color:Color.fromARGB(255, 201, 200, 200),
                                    ),
                                     Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(width: 353,
                                      height: 67,
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/greenRec.png"))
                                              ),
                                              child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
                                      
                                      ),
                                               ),
                                  ],
                                ),
                              );
                            });
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/plusRec.png"))),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        title: Text("Beverage"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 17, 
              
              mainAxisExtent: 280, 
              crossAxisCount: 2),
          itemCount: drinkList.length,
          itemBuilder: (context, index) {
            return drinkcontainer(
              drinkimage: drinkList[index].drinkimage,
              drinkname: drinkList[index].drinkname,
              ml: drinkList[index].ml,
              Price: drinkList[index].Price,
              selectedIndex: index,
            );
          }),
    );
  }
}

class drinkcontainer extends StatelessWidget {
  const drinkcontainer({
    Key? key,
    required this.drinkimage,
    required this.drinkname,
    required this.ml,
    required this.Price,
    required this.selectedIndex,
  }) : super(key: key);
  final String drinkimage;
  final String drinkname;
  final Widget ml;
  final String Price;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.2, color: Colors.grey)),
      width: 173,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 93,
              height: 93,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(drinkimage))),
            ),
          ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Container(
              margin: EdgeInsets.only(left: 8),
            width: 138,
            height: 40,
            decoration: BoxDecoration(),
            child: Text(drinkname,style: TextStyle(fontWeight: FontWeight.w500),),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            width: 138,
            height: 40,
            decoration: BoxDecoration(),
            child: ml,
          ),
          Container(
            margin: EdgeInsets.only(right: 115),
            width: 138,
            height: 40,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(Price))),
          ),
          ],
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/plusRec.png"))),
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        // showModalBottomSheet(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return Container(
                        //         width: 414,
                        //         height: 791,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.only(
                        //               topLeft: Radius.circular(20),
                        //               topRight: Radius.circular(20)),
                        //         ),
                        //         child: Column(
                        //           children: [
                        //             Padding(
                        //               padding: const EdgeInsets.all(8.0),
                        //               child: Text("Add"),
                        //             ),
                        //             Divider(
                        //               color: Colors.grey,
                        //             ),
                        //             Text(drinkList[selectedIndex].drinkname),
                        //           ],
                        //         ),
                        //       );
                        //     });
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
  }
}
