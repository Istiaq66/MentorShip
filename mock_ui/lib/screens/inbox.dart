import 'package:bkash_ui/components/notification.dart';
import 'package:bkash_ui/components/transactions.dart';
import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Inbox',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 18,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/fly.png'),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child:  Column(
            children: [
              const TabBar(tabs: [
                Tab(
                  child: Text(
                    "Notification",
                    style: TextStyle(
                        fontFamily: 'SourceSansPro', color: Colors.pink),
                  ),
                ),
                Tab(
                  child: Text(
                    "Transactions",
                    style: TextStyle(
                        fontFamily: 'SourceSansPro', color: Colors.pink),
                  ),
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Notifications(),
                    Transactions(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
