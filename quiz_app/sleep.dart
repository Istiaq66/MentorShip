import 'dart:async';
import 'dart:io';

void main() async {
  print("Start");

  var data = await getData();

  print("Hello");
}

Future<String?> getData() async {

  String? result;

  await Future.delayed(const Duration(seconds: 3), () {
    print("Task 2 Complete");
    result = "Task 2 Data";
  });

  return result;
}
