import 'dart:convert';
import 'package:http/http.dart';

class Player {
  String username; //username of the player
  int level; //level of the player
  int rank; //rank of the player
  int mmr;
  double kd; //kd of the player

  Player({this.username});

  Future<void> getData() async {
    try {
      Response response = await get('https://r6tab.com/api/search.php?platform=uplay&search=$username');
      Map data = jsonDecode(response.body);

      // print(data);
      
      List<dynamic> moreData = data['results'];
      Map finalData = moreData[0];
      level = finalData['p_level']; //level of the user
      rank = finalData['p_currentrank']; //rank of the user
      mmr = finalData['p_currentmmr'];
      int playerKD = finalData['kd']; 
      kd = playerKD.toDouble() / 100; //kd of the user
    }
    catch (e){
      print(e);
      username = "Name Invalid";
      level = 0;
      kd = 0.0;
      rank = 0;
      mmr = 0;
    }
    
  }

}
