import 'dart:async';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class Result extends StatefulWidget {
  final String userName;
  final int score;

  const Result({super.key, required this.userName, required this.score});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final _controller = ConfettiController();
  bool isControllerStopped = false;

  String congo() {
    if (widget.score > 2) {
      if (!isControllerStopped) {
        _controller.play();
      }
      Future.delayed(const Duration(seconds: 5)).then((_) {
        setState(() {
          if (!isControllerStopped) {
            _controller.stop();
            isControllerStopped = true;
          }
        });
      });

      return "Congratulations ${widget.userName}, you passed!";
    } else {
      return "Sorry ${widget.userName}, you failed.";
    }
  }

  @override
  void dispose() {
    // Stop the confetti controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
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
                              widget.userName,
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
                                text: widget.score.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontFamily: 'SourceSansPro',
                                ),
                                children: const [
                                  TextSpan(
                                    text: "/5",
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
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      congo(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.popUntil((route) => route.isFirst);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 80,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade700,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                      ),
                      child: const Text(
                        "Start Again",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: -pi / 2,
          emissionFrequency: 0.05, // How often the particles should be emitted
          numberOfParticles: 20, // Number of particles in a single emission
          maxBlastForce: 50, // Maximum blast force applied to each particle
          minBlastForce: 20, // Minimum blast force applied to each particle
          gravity:
              0.1, // Gravity applied to particles to simulate falling effect
          particleDrag:
              0.05, // Drag applied to particles to slow down their movement
        ),
      ],
    );
  }
}
