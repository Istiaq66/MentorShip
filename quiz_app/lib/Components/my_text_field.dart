import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String mytext;
  const MyTextField({super.key, required this.mytext});

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: const TextStyle(color: Colors.white, fontFamily: 'Roboto',fontWeight: FontWeight.bold,
      fontSize: 25),
    );
  }
}
