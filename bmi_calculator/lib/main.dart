import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

 
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'BMI calculator',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home:  const HomeScreen(),
    );
   
  }

}