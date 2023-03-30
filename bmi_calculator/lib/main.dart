import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'BMI calculator',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home:  HomeScreen(),
    );
   
  }

}