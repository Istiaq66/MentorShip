import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:serialize_deserialize/userModel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  UserModel userObject =
      UserModel(id: 1, name: "Istiaq", email: "abc@gmail.com");

  String userJson = '{"id": 1,"name": "Ovi","email": "ovi@gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
            onPressed: () {
              //--------Serialization---------//
              Map userMap = userObject.toMap();
              var json = jsonEncode(userMap);
              print(json);
            },
            child: const Text("Serialize"),
          ),
          ElevatedButton(
            onPressed: () {
              //--------Deserialization---------//
              Map userMap = jsonDecode(userJson);
              UserModel newUser = UserModel.fromMap(userMap);
              print(newUser.toString());
            },
            child: const Text("DeSerialize"),
          ),
        ]),
      ),
    );
  }
}
