import 'package:flutter/material.dart';
import 'package:quiz_app/Interface/home.dart';



class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _name = TextEditingController();
  final TextEditingController _pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 53,
            backgroundColor: Color.fromARGB(255, 37, 254, 222),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/icon.png'), 
            ),
          ),
          const Text(
            'Quiz App',
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            'Test Your Limits'.toUpperCase(),
            style: TextStyle(
              color: Colors.teal[100],
              fontFamily: 'SourceSansPro',
              fontSize: 15,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              thickness: 2,
              color: Colors.teal[200],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: TextField(
              controller: _name,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
                icon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.teal[100],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: TextField(
              controller: _pass,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
                icon: const Icon(
                  Icons.password,
                  color: Colors.white,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.teal[100],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              String name = _name.text.trim();
              String pass = _pass.text.trim();

              if (name == "admin" && pass == "12345") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.teal,
                      title: const Text(
                        "Error!!!",
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.white,
                        ),
                      ),
                      content: const Text(
                        "Password is empty or wrong",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[700],
                          ),
                          child: const Text(
                            "OK",
                            style: TextStyle(fontFamily: 'SourceSansPro'),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.teal.shade700,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
