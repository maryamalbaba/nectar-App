import 'package:flutter/material.dart';
import 'package:nectar/view/pages/Account.dart';

import 'package:nectar/view/pages/favoreitePage.dart';
import 'package:nectar/view/homePage.dart';
import 'package:nectar/view/pages/mybasket.dart';
import 'package:nectar/view/pages/searchPage.dart';
import 'package:nectar/view/shope.dart';

class core extends StatefulWidget {
  core({super.key});

  @override
  State<core> createState() => _coreState();
}

class _coreState extends State<core> {
  List<Widget> pages = [
    homePage(),
    
    searchPage(),
    mybasket(),
   favoreitePage(),
    Account(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (newdestenation) {
          setState(() {
            currentIndex = newdestenation;
            print(newdestenation);
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.store), label: 'shope'),
          NavigationDestination(icon: Icon(Icons.search_outlined), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: "cart"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
