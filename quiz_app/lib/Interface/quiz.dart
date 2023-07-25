import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quiz_app/Interface/result.dart';
import '../model/questions.dart';

class Quiz extends StatefulWidget {
  final String nameFromHome;
  final String subChoice;

  const Quiz({super.key, required this.nameFromHome, required this.subChoice});

  @override
  State<Quiz> createState() => _QuizState(nameFromHome, subChoice);
}

class _QuizState extends State<Quiz> {
  String nameFromHome;
  String subChoice;
  _QuizState(this.nameFromHome, this.subChoice);

  String? selectedOption;
  int? selectedOptionIndex;

  int result = 0;
  bool select = false;
  int? number;

  List<Questions> quiz = [];

  Future<void> _loadQuestions() async {
    final questionBox = Hive.box<Questions>('q');

    // Clear the list before loading the questions
    quiz.clear();

    // Iterate through the items in the box and add physics questions to the list
    for (var i = 0; i < questionBox.length; i++) {
      final question = questionBox.getAt(i);
      if (question != null && question.subject == subChoice) {
        quiz.add(question);
      } else if (quiz.length == 5) {
        break;
      }
    }
  }

  int _timeleft = 10;
  int qNum = 0;

  Timer? _timer;

  void _startCount() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timeleft--;
        if (_timeleft == 0) {
          _timeleft = 10;
          if (qNum < quiz.length - 1) {
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
                  score: result,
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
    _loadQuestions().then((_) {
      setState(() {});
    });
    if (once == 0) {
      _startCount();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                      text: 'Question ${quiz[qNum].id}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'SourceSansPro',
                      ),
                      children: const [
                        TextSpan(
                          text: "/5",
                          style: TextStyle(
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
                          quiz[qNum].question,
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
                          children: quiz[qNum].options!.map((option) {
                            number = (quiz[qNum].options!.indexOf(option)+1);
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  if (select == false) {
                                    selectedOption = option;
                                    selectedOptionIndex =
                                        quiz[qNum].options!.indexOf(option);

                                    if (quiz[qNum].answer ==
                                        selectedOptionIndex) {
                                      result++;
                                    }
                                    select = true;

                                    if (qNum < quiz.length - 1) {
                                      Future.delayed(
                                          const Duration(milliseconds: 200),
                                          () {
                                        setState(() {
                                          _timeleft = 10;
                                          qNum++;
                                          select = false;
                                        });
                                      });
                                    } else {
                                      Future.delayed(
                                              const Duration(milliseconds: 200))
                                          .then((_) {
                                        _timer?.cancel();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Result(
                                              userName: nameFromHome,
                                              score: result,
                                            ),
                                          ),
                                        );
                                      });
                                    }
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    margin: const EdgeInsets.symmetric(
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
      ),
    );
  }
}
