import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

class Quiz extends StatefulWidget {
  var nameFromHome;

  Quiz({super.key, this.nameFromHome});

  @override
  State<Quiz> createState() => _QuizState(nameFromHome);
}

class _QuizState extends State<Quiz> {
  var nameFromHome;
  _QuizState(this.nameFromHome);

  String? selectedOption;
  int? selectedOptionIndex;

  int result = 0;
  bool select = false;
  int qNum = 0;
  int? number;

  List<Question> qList = [
    Question(
        id: 1,
        question:
            "Flutter is an open-source UI software development kit created by ______",
        answer: 1,
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Question(
        id: 2,
        question: "When google release Flutter.",
        answer: 3,
        options: ['Jun 2017', 'May 2018', 'May 2016', 'May 2017']),
    Question(
        id: 3,
        question: "A memory location that holds a single letter or number.",
        answer: 2,
        options: ['Double', 'Int', 'Char', 'Word']),
    Question(
        id: 4,
        question: "What command do you use to output data to the screen?",
        answer: 1,
        options: ['Cin', 'Count>>', 'Cout', 'Output>>']),
  ];

  int _timeleft = 10;

  void _startCount() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timeleft--;
        if (_timeleft == 0) {
          _timeleft = 10;
          if (qNum < 3) {
            setState(() {
              qNum++;
              select = false;
            });
          } else {
            timer.cancel();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Result(
                  userName: nameFromHome,
                  Score: result.toString(),
                ),
              ),
            );
          }
        }
      });
    });
  }

  int once = 0;

  @override
  void initState() {
    super.initState();

    if (once == 0) {
      _startCount();
    } else {
      once++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Countdown: $_timeleft',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const Icon(
                    Icons.timer,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text.rich(
              TextSpan(
                text: 'Question ${qList[qNum].id}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'SourceSansPro',
                ),
                children: [
                  TextSpan(
                    text: "/" + qList.length.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                thickness: 1.5,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1.5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    qList[qNum].question,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: qList[qNum].options.map((option) {
                      number = (qList[qNum].options.indexOf(option)) + 1;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            if (select == false) {
                              selectedOption = option;
                              selectedOptionIndex =
                                  qList[qNum].options.indexOf(option);

                              if (qList[qNum].answer == selectedOptionIndex) {
                                result++;
                              }
                              //---Manual Testing---//
                              print(result);
                              select = true;
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Text("$number"),
                            Container(
                              decoration: BoxDecoration(
                                color: option == selectedOption
                                    ? Colors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.blue),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                option,
                                style: TextStyle(
                                  color: option == selectedOption
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: option == selectedOption
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

//Model Class of Question//
class Question {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}
