import 'package:bkash_ui/components/expanded_menu.dart';
import 'package:bkash_ui/components/scroll_menu.dart';
import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/carousel.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Main menu on the top//
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ExpandedMenu()),
            
            //My bkash//
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromARGB(255, 226, 226, 226),
                    width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8, 8, 0),
                        child: Text(
                          'My bkash',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 12, 0),
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              color: Colors.pink.shade400),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ScrollMenu(
                            image: 'images/stiline.jpg', title: 'Styline'),
                        ScrollMenu(
                            image: 'images/metlife.jpg', title: 'Metlife'),
                        ScrollMenu(image: 'images/daraz.jpg', title: 'Daraz'),
                        ScrollMenu(
                            image: 'images/mobile_recharge.jpg',
                            title: 'Tanveer'),
                        ScrollMenu(
                            image: 'images/mobile_recharge.jpg', title: 'Arif'),
                        ScrollMenu(
                            image: 'images/mobile_recharge.jpg', title: 'Sir'),
                        ScrollMenu(
                            image: 'images/mobile_recharge.jpg',
                            title: 'Friend'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            //Carousel//
            Container(
              margin: const EdgeInsets.all(10),
              child: const Caorousel(),
            ),
            //Suggetions//
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromARGB(255, 226, 226, 226),
                    width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8, 8, 0),
                        child: Text(
                          'Suggetions',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 12, 0),
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              color: Colors.pink.shade400),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ScrollMenu(image: 'images/daraz.jpg', title: 'Daraz'),
                        ScrollMenu(
                            image: 'images/card_bill.jpg', title: 'Card Bill'),
                        ScrollMenu(image: 'images/akash.jpg', title: 'Akash'),
                        ScrollMenu(
                            image: 'images/ajkerdeal.jpg', title: 'Ajker Deal'),
                        ScrollMenu(image: 'images/btcl.jpg', title: 'BTCL'),
                        ScrollMenu(
                            image: 'images/grameenphone.jpg',
                            title: 'Gameenphone'),
                        ScrollMenu(
                            image: 'images/bdjobs.jpg', title: 'BD jobs'),
                        ScrollMenu(
                            image: 'images/bdnews24.jpg', title: 'BD news24'),
                        ScrollMenu(image: 'images/more.jpg', title: 'More'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            //Final Banner//
            Container(
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/final_banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //PayBills//
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromARGB(255, 226, 226, 226),
                    width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset('images/pay_bill.jpg'),
                      const Text(
                        'Pay 4 Electricity Bills',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Every Month, Without any charge',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text(
                            'Pay Now',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 15,
                                color: Colors.pink.shade400,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
