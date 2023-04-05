import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //controller
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lottie Animation'),
        backgroundColor: Colors.redAccent,
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (click == false) {
              _controller.forward();
              click = true;
            } else {
              _controller.reverse();
              click = false;
            }
          },
          child: Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_gyNnzxbm7F.json',
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
