import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // We need to call it manually,
  // because we going to call setPreferredOrientations()
  // before the runApp() call
  WidgetsFlutterBinding.ensureInitialized();

  // Than we setup preferred orientations,
  // and only after it finished we run our app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 53,
              backgroundColor: Color.fromARGB(255, 37, 254, 222),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/istiaq.jpg'),
              ),
            ),
            Text(
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
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal[500],
                ),
                title: Text(
                  '+88017xxxxxxx',
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal[500],
                ),
                title: Text(
                  'ahmedboby66@gmail.com',
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
