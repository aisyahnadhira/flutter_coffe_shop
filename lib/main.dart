import 'package:coffe_shop/pages/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CoffeApp());
}

class CoffeApp extends StatelessWidget {
  const CoffeApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffe Shop",
      debugShowCheckedModeBanner: false,
      home: StartScreen()
    );
  }
}