import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_app/model/user.dart';

class LoadData {
  Box<Student> studentBox = Hive.box<Student>('student');

  List<Student> students = [
    Student(
        name: 'Istiaq',
        age: 20,
        date: DateTime.now().toString().substring(0, 10),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Student(
        name: 'Ovi',
        age: 20,
        date: DateTime.now().toString().substring(0, 10),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Student(
        name: 'Rian',
        age: 20,
        date: DateTime.now().toString().substring(0, 10),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
    Student(
        name: 'Reaz',
        age: 20,
        date: DateTime.now().toString().substring(0, 10),
        options: ['Apple', 'Google', 'Facebook', 'Microsoft']),
  ];

  //write data
  void writeData() {
    for (int i = 0; i < students.length; i++) {
      studentBox.add(students[i]);
    }
  }


  //read data
  void readData() {
    print(studentBox.get(0)?.date);
  }

  //deletedata
  Future<void> deleteData() async {
    await studentBox.clear();
  }
}
