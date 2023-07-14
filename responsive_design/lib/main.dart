import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;

    return  MaterialApp(
      home: Scaffold(
        backgroundColor: currentWidth < 600?Colors.amber : Colors.cyan,
        body: Center(
          child: Text(currentWidth.toString()),
        ),
      ),
    );
  }
}
