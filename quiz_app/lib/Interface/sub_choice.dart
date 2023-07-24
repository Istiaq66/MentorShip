import 'package:flutter/material.dart';

class SubChoice extends StatefulWidget {
  const SubChoice({super.key});

  @override
  State<SubChoice> createState() => _SubChoice();
}

class _SubChoice extends State<SubChoice> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Center(
                child: Text('Quiz Categories'),
              )
            ],
          )
        ],
      ),
    );
  }
}
