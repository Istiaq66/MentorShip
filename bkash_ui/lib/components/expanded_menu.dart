import 'package:bkash_ui/components/menu.dart';
import 'package:bkash_ui/components/scroll_menu.dart';
import 'package:flutter/material.dart';

class ExpandedMenu extends StatefulWidget {
  const ExpandedMenu({super.key});

  @override
  State<ExpandedMenu> createState() => _ExpandedMenuState();
}

class _ExpandedMenuState extends State<ExpandedMenu> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    return _expanded
        ?
        // Not Expanded
        Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(
                          image: "images/mobile_recharge.jpg",
                          title: 'Mobile Recharge'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/cash_out.jpg", title: 'Cash Out'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(
                          image: "images/make_payment.jpg",
                          title: 'Make Payment'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/add_money.jpg", title: 'Add Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/pay_bill.jpg", title: 'Pay Bill'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/savings.png", title: 'Savings'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/loan.png", title: 'Loan'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/b2b.png", title: 'Bkash to Bank'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/remitence.png", title: 'Remittance'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/edufee.png", title: 'Education Fee'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/mfin.png", title: 'Micro Finance'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: 90,
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                            0.3,
                            1,
                          ],
                          colors: [
                            Colors.white,
                            Colors.white10,
                          ]),
                    ),
                  )),
              Positioned(
                bottom: 50,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 2,
                          offset: Offset(
                            0.0, // Move to right 7.0 horizontally
                            5.0, // Move to bottom 8.0 Vertically
                          ))
                    ],
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _expanded = false;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'See More',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 15,
                                color: Colors.pink.shade400,
                                fontWeight: FontWeight.bold),
                          ), // <-- Text
                          Icon(
                            // <-- Icon
                            Icons.keyboard_arrow_down,
                            color: Colors.pink.shade400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        :
        // Expanded
        Column(
            children: [
              const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/send_money.jpg", title: 'Send Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(
                          image: "images/mobile_recharge.jpg",
                          title: 'Mobile Recharge'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/cash_out.jpg", title: 'Cash Out'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(
                          image: "images/make_payment.jpg",
                          title: 'Make Payment'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/add_money.jpg", title: 'Add Money'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/pay_bill.jpg", title: 'Pay Bill'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/savings.png", title: 'Savings'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/loan.png", title: 'Loan'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Menu(image: "images/b2b.png", title: 'Bkash to Bank'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/remitence.png", title: 'Remittance'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/edufee.png", title: 'Education Fee'),
                      SizedBox(
                        width: 10,
                      ),
                      Menu(image: "images/mfin.png", title: 'Micro Finance'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ScrollMenu(image: "images/binimoy.png", title: 'BINIMOY'),
                      SizedBox(
                        width: 10,
                      ),
                      ScrollMenu(
                          image: "images/bangla_qr.png", title: 'Bangla QR'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Container(
                height: 30,
                width: 90,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2,
                        offset: Offset(
                          0.0, // Move to right 7.0 horizontally
                          5.0, // Move to bottom 8.0 Vertically
                        ))
                  ],
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _expanded = true;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Close',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              color: Colors.pink.shade400,
                              fontWeight: FontWeight.bold),
                        ), // <-- Text
                        Icon(
                          // <-- Icon
                          Icons.keyboard_arrow_up,
                          color: Colors.pink.shade400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
  }
}
