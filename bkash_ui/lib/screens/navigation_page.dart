import 'package:bkash_ui/screens/inbox.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;

  List screens = [
    const Home(),
    const Inbox(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        tooltip: 'Scan',
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.pink[400],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.email),
                label: 'Inbox',
              ),
            ],
            currentIndex: index,
            selectedItemColor: Colors.pink[400],
            onTap: _onItemTapped,
          )),
    );
  }
}
