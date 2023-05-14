import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: TextField(
                controller: _name,
                style: const TextStyle(fontSize: 20, color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                  icon: const Icon(
                    Icons.person_2_rounded,
                    color: Colors.white,
                  ),
                  hintText: 'Enter user name',
                  hintStyle: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    color: Colors.teal[100],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                String name = _name.text;
                if (name.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.teal,
                        title: const Text(
                          "Error!!!",
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.white,
                          ),
                        ),
                        content: const Text(
                          "Name is empty",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SourceSansPro',
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal[700],
                            ),
                            child: const Text(
                              "OK",
                              style: TextStyle(fontFamily: 'SourceSansPro'),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Quiz(nameFromHome: _name.text.toString()),
                    ),
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 30,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.teal.shade700,
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "Start",
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
      ),
    );
  }
}
