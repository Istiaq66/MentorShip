import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
