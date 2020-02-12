import 'package:flutter/material.dart';
import 'package:r6s_stats/services/apiClass.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Player ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/typename');
                  },
                  color: Colors.grey[800],
                  icon: Icon(Icons.search),
                  label: Text('Player Search'),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "${data['username']}",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'CURRENT PLAYER LEVEL',
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "${data['level']}",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'PLAYER K/D',
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "${data['kd']}",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      )
    );
  }
}