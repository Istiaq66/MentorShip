import 'package:flutter/material.dart';
import 'package:hive_app/model/user.dart';
import 'package:hive_flutter/hive_flutter.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  
  List<Student> students = [
    Student(
        name: 'Istiaq',
        age: 20,
        date: DateTime(2017, 9, 10).toString(),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Student(
        name: 'Ovi',
        age: 20,
        date: DateTime(2017, 9, 10).toString(),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Student(
        name: 'Rian',
        age: 20,
        date: DateTime(2017, 9, 10).toString(),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Student(
        name: 'Reaz',
        age: 20,
        date: DateTime(2017, 9, 10).toString(),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
  ];

  Box<Student> studentBox = Hive.box<Student>('student');

  //write data
  void writeData() {
    for (int i = 0; i < students.length; i++) {
      studentBox.add(students[i]);
    }
  }

  //read data
  void readData() {
    print(studentBox.get(3)?.options);
  }

  //deletedata
  void deleteData() {
    setState(() {
      studentBox.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  writeData();
                });
              },
              child: Text('Write'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                readData();
              },
              child: Text('Read'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  deleteData();
                });
              },
              child: Text('Delete'),
              color: Colors.red,
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: studentBox.length,
            itemBuilder: (context, index) {
              Student student = studentBox.getAt(index)!;
              return ListTile(
                title: Text('Name: ${student.name}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Age: ${student.age}'),
                    Text('Date: ${student.date}'),
                    Text('Options: ${student.options?.join(', ')}'),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
