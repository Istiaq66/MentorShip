import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transactions extends StatelessWidget {
  Transactions({super.key});

  final String _time = DateFormat.jm().format(DateTime.now());
  final String _date = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'images/istiaq.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Istiaq',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '- ৳20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/user.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Boby',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '- ৳20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 226, 226, 226),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'images/profile.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Received Money',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Raihan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '+ ৳20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/user.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Boby',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '- ৳20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/user.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Boby',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '- ৳300.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/user.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Boby',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '- ৳20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 226, 226, 226),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/user.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile Recharge',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Boby',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Trans ID: AD775HJK45',
                                style: TextStyle(fontFamily: 'SourceSansPro'),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '- ৳20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: 'SourceSansPro'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$_time $_date',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                radius: 10,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
      ),
    );
  }
}
