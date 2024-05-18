import 'package:flutter/material.dart';
import 'package:nectar/view/pages/favoraitecart.dart';

import 'package:nectar/view/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext context) { return favoraite_cart(); },
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: splashscreen(),
    );
  }
}
