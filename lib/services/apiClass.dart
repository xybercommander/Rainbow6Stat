import 'dart:convert';
import 'package:http/http.dart';

class Player {
  String username; //username of the player
  int level; //level of the player
  double kd; //kd of the player

  Player({this.username});

  Future<void> getData() async {
    Response response = await get('https://r6tab.com/api/search.php?platform=uplay&search=$username');
    Map data = jsonDecode(response.body);

    // print(data);
    
    List<dynamic> moreData = data['results'];
    Map finalData = moreData[0];
    level = finalData['p_level'];
    int playerKD = finalData['kd'];
    kd = playerKD.toDouble() / 100;

    // print(level);
    // print(kd);

    // this.level = playerLevel;
    // this.kd = playerKD;
  }

}
