import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          'inbox',
        ),
      ),
    );
  }
}
