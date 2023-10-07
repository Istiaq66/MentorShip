class UserModel {
  late int id;
  late String name;
  late String email;
  UserModel({required this.id, required this.name, required this.email});

  //Object to -->> Map (Serialization)
  Map<dynamic,dynamic> toMap() {
    return {"id": id, "name": name, "email": email};
  }

  //Map to -->> Object (Desirialization)
  UserModel.fromMap(Map<dynamic,dynamic> map) {
    id = map["id"];
    name = map["name"];
    email = map["email"];
  }
}
