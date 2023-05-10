import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 0, 255, 217),
              child: Text("Welcome"),
            ),
          ],
        ),
      ),
    );
  }
}
