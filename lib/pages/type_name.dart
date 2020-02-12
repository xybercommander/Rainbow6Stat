import 'package:flutter/material.dart';
import 'package:r6s_stats/services/apiClass.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Name extends StatefulWidget {
  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {

  String userNametext = "";

  final mycontroller = TextEditingController();

  void updatePlayerID(String username) async {

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Type username'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            Text(
              'Enter the username of the player',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),                    
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.grey[850])
                      ),
                      cursorColor: Colors.amber,
                      style: TextStyle(color: Colors.amberAccent),
                      controller: mycontroller,
                      onSubmitted: (String str) {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {                               
                setState(() {
                  userNametext = mycontroller.text;
                });
                print(userNametext);
              },
              color: Colors.grey[800],              
              child: Text(
                'Search',
                style: TextStyle(
                  color: Colors.amber
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}