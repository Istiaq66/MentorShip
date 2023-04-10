import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text("I'm Rich"),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    )),
  );
}
