import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycard/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 55.0,
                backgroundColor: Colors.lightGreenAccent,
                backgroundImage: AssetImage('images/sumitkkkk.jpg'),
              ),
            ),
            Text(
              'Sumit Varun',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 30.0,
                //fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER  DEVELOPER',
              style: TextStyle(
                fontFamily: 'Exo2',
                color: Colors.tealAccent,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 155.0,
              child: Divider(
                color: Colors.tealAccent,
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91-123 456 789',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Exo2',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'sumitvarun0781@gmail.com',
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'Exo2',
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
                width: 200.0,
                height: 100.0,
                child: OutlineButton(
                  borderSide: BorderSide(width: 1.0, color: Colors.tealAccent),
                  padding: EdgeInsets.only(left: 22.0),
                  color: Colors.teal[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        'images/home.png',
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'PROFILE',
                          style: TextStyle(
                            color: Colors.tealAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Exo2',
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
