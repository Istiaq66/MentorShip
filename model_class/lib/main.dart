import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

List<Names> nameList = [
  Names(name: 'Istiaq', age: 20, date: DateTime(2017, 9, 10)),
  Names(name: 'Ovi', age: 20, date: DateTime(2017, 9, 10)),
  Names(name: 'Rian', age: 20, date: DateTime(2017, 9, 10)),
  Names(name: 'Reaz', age: 20, date: DateTime(2017, 9, 10)),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: nameList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(nameList[index].name),
                subtitle: Text(nameList[index].age.toString()),
                trailing: IconButton(
                  onPressed: () {
                    nameList.removeAt(index);
                    setState(() {});
                  },
                  icon: Icon(Icons.delete),
                ),
              );
            }),
      ),
    );
  }
}

class Names {
  String name;
  int age;
  DateTime date;

  Names({
    required this.name,
    required this.age,
    required this.date,
  });
}
