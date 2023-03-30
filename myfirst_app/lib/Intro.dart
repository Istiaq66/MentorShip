import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirst_app/main.dart';

class Intro extends StatefulWidget {




  @override
  State<Intro> createState() => _IntroState();
  
}





class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
          title: Text('Intro_page'),
        ),
        body: Container(
          color: Color.fromARGB(255, 0, 255, 217),
        ));
  }
}
