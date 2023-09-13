import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

  final String _time = DateFormat.jm().format(DateTime.now());
  final String _date = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              fontFamily: 'SourceSansPro'),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700],
                                              ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '🎉আজকের সুপার অফার!🎉',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '$_time $_date',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'বিকাশে ৩৯৯ টাকা রিচার্জ করলে ৪০ টাকা ক্যাশব্যাক!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
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
