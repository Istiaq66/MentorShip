import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  Myhome({super.key});

  TextEditingController _name = TextEditingController();
  TextEditingController _pass = TextEditingController();

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
              backgroundImage: AssetImage('images/istiaq.jpg'),
            ),
          ),
          const Text(
            'Istiaq Ahmed',
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            'Software Engineer'.toUpperCase(),
            style: TextStyle(
              color: Colors.teal[100],
              fontFamily: 'SourceSansPro',
              fontSize: 20,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 200,
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
              keyboardType: TextInputType.number,
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
              String name = _name.text;
              String pass = _pass.text;

              if (name == "admin" && pass == "12345") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => home(),
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      "Error",
                      style: TextStyle(color: Colors.red),
                    ),
                    content: ListBody(
                      children:  const [
                        Text("You entered wrong password"),
                      ],
                    ),
                  ),
                );

                Navigator.of(context).pop();
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 180, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.teal.shade700,
                  borderRadius: BorderRadius.circular(8)),
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
