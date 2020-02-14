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



  void updatePlayerID(String userName) async {
    Player user = Player(username: userName);
    await user.getData();
    //Navigate to home screen
    Navigator.pop(context, {
      'username': user.username,
      'level': user.level,
      'kd': user.kd,
      'rank': user.rank,
      'mmr': user.mmr
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(        
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Type username'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.close, color: Colors.transparent,),
              onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
          leading: new Container(),
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
                  updatePlayerID(userNametext);
                },
                color: Colors.grey[800],              
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.amber
                  ),
                ),
                splashColor: Colors.amberAccent,
              ),
            ],
          ),
        )
      ),
    );
  }
}