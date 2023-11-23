import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import '../model/questions.dart';
import 'Interface/login.dart';


void main() async {

  //initialize hive
  await Hive.initFlutter();

  //Register Adapter to hive
  Hive.registerAdapter(QuestionsAdapter());

  // open the box
  await Hive.openBox<Questions>('q');

  
  
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
