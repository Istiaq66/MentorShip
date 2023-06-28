import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;
  @HiveField(2)
  String date;
  @HiveField(3)
  List<String>? options;

  Student({
    required this.name,
    required this.age,
    required this.date,
    required this.options,
  });
}

@HiveType(typeId: 1)
class Teacher extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;
  @HiveField(2)
  String date;

  Teacher({
    required this.name,
    required this.age,
    required this.date,
  });
}
