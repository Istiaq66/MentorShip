import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      
      appBar: AppBar(
        title: Text("I'm Poor"),
        backgroundColor: Color.fromARGB(255, 7, 132, 154),
      ),
      backgroundColor: Color.fromARGB(255, 176, 199, 239),
      body:
       Center(
        child: Image(
          image: AssetImage('images/coal.jpg'),
        ),
      ),
    ),
  ));
}
