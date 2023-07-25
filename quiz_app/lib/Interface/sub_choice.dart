import 'package:flutter/material.dart';
import 'package:quiz_app/Components/my_text_field.dart';
import 'package:quiz_app/Components/subject_card.dart';
import 'package:quiz_app/Interface/quiz.dart';

class SubChoice extends StatelessWidget {
  final String nameFromHome;
  const SubChoice({super.key, required this.nameFromHome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                const MyTextField(mytext: 'Subject Category'),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectCard(
                      cardName: "Math",
                      imageLink: 'images/math.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Quiz(nameFromHome: nameFromHome,subChoice: 'Math',),
                          ),
                        );
                      },
                    ),
                    SubjectCard(
                      cardName: "Physics",
                      imageLink: 'images/physics.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Quiz(nameFromHome: nameFromHome,subChoice: 'Physics',),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectCard(
                      cardName: "Chemistry",
                      imageLink: 'images/chemistry.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Quiz(nameFromHome: nameFromHome,subChoice: 'Chemistry',),
                          ),
                        );
                      },
                    ),
                    SubjectCard(
                      cardName: "Biology",
                      imageLink: 'images/biology.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Quiz(nameFromHome: nameFromHome,subChoice: 'Biology',),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectCard(
                      cardName: "General Knowledge",
                      imageLink: 'images/gk.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Quiz(nameFromHome: nameFromHome,subChoice: 'General Knowledge',),
                          ),
                        );
                      },
                    ),
                    SubjectCard(
                      cardName: "Programming",
                      imageLink: 'images/programming.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Quiz(nameFromHome: nameFromHome,subChoice: 'Programming',),
                          ),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
