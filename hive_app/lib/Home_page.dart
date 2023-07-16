import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:hive_app/model/user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './model/load.dart';
import 'dart:math';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  
  Box<Student> studentBox = Hive.box<Student>('student');
  LoadData loadData = LoadData();
  final _controller = ConfettiController();
  bool _isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    loadData.writeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: -pi / 2,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  loadData.writeData();
                });
                _controller.play();
                 _isPlaying = true;
               
              },
              color: Colors.blue,
              child: Text('Write'),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  loadData.readData();
                });
                if (_isPlaying) {
                  _controller.stop();
                }
                _isPlaying = !_isPlaying;
              },
              child: Text('Read'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () async {
                await loadData.deleteData();
                setState(() {});
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
