import 'package:hive/hive.dart';
part 'questions.g.dart';

@HiveType(typeId: 0)
class Questions extends HiveObject {
  @HiveField(0)
  String subject;
  @HiveField(1)
  int id;
  @HiveField(2)
  String question;
  @HiveField(3)
  int answer;
  @HiveField(4)
  List<String>? options;

  Questions({
    required this.subject,
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}
