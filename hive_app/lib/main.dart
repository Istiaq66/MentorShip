import 'package:flutter/material.dart';
import 'package:hive_app/Home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'model/user.dart';

void main() async {
  //initialize hive
  await Hive.initFlutter();


  Hive.registerAdapter(StudentAdapter());

   // open the box
   await Hive.openBox<Student>('student');

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
