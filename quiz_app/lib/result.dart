import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var userName, Score;

  Result({this.userName, this.Score});

  String congo() {
    if (int.parse(Score) > 2) {
      return "Congratulations $userName, you passed!";
    } else {
      return "Sorry $userName, you failed.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Result",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                  width: 180,
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Name: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            userName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Score: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: Score,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontFamily: 'SourceSansPro',
                              ),
                              children: const [
                                TextSpan(
                                  text: "/4",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'SourceSansPro',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  congo(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
