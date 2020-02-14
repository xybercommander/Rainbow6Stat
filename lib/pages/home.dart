import 'package:flutter/material.dart';
import 'package:r6s_stats/services/apiClass.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  Map ranks = {
    0: "Copper V",
    1: "Copper IV",
    2: "Copper III",
    3: "Copper II",
    4: "Copper I",
    5: "Bronze V",
    6: "Bronze IV",
    7: "Bronze III",
    8: "Bronze II",
    9: "Bronze I",
    10: "Silver V",
    11: "Silver IV",
    12: "Silver III",
    13: "Silver II",
    14: "Silver I",
    15: "Gold III",
    16: "Gold II",
    17: "Gold I",
    18: "Platinum III",
    19: "Platinum II",
    20: "Platinum I",
    21: "Diamon",
    22: "Champion"
  };

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(  
          decoration: BoxDecoration(          
            image: DecorationImage(
              image: AssetImage('assets/vigil.jpg'),
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.cover            
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 25,),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 13,
                    letterSpacing: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${data['username']}",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'CURRENT PLAYER LEVEL',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 13,
                    letterSpacing: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${data['level']}",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'PLAYER K/D',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 13,
                    letterSpacing: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${data['kd']}",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'RANK',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 13,
                    letterSpacing: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${ranks[data['rank']]}",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'CURRENT MMR',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 13,
                    letterSpacing: 2
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${data['mmr']}",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 26,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    
      floatingActionButton: FloatingActionButton.extended( // Complete this
        onPressed: () async {
          dynamic result = await Navigator.pushNamed(context, '/typename');
          setState(() {
            data = {
              'username': result['username'],
              'level': result['level'],
              'kd': result['kd'],
              'rank': result['rank'],
              'mmr': result['mmr']
            };                      
          });
        },
        label: Text(
          'Player Search',
          style: TextStyle(
            color: Colors.amber
          ),
        ),
        icon: Icon(Icons.search, color: Colors.amber,),
        backgroundColor: Colors.grey[850],
        splashColor: Colors.grey[500],
        elevation: 2,
      ),
    );
  }
}