import 'package:flutter/material.dart';
import 'package:r6s_stats/services/apiClass.dart';
import 'package:r6s_stats/pages/home.dart';
import 'package:r6s_stats/pages/type_name.dart';
import 'package:r6s_stats/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/load',
  routes: {
    '/load': (context) => Loading(),
    '/home': (context) => Home(),
    '/typename': (context) => Name(),
  },
));

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {


//   Player user1 = Player(username: 'Sparta_-');
//   String uname;
//   int level;
//   double kd;
  
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     user1.getData();
//     build(context);
//   }

//   void updatePlayer() async {
//     this.uname = user1.username;
//     this.level = user1.level;
//     this.kd = user1.kd;
//   }


//   @override
//   Widget build(BuildContext context) {
//     user1.getData();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('r6s stats'),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Column(
//         children: <Widget>[
//           Text(
//             "Username : ${user1.username}"
//           ),
//           Text(
//             "Level : ${user1.level}"
//           ),
//           Text(
//             "K/D : ${user1.kd}"
//           ),
//         ],
//       ),
//     );
//   }
// }
