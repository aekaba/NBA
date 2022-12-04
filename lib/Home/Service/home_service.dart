import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nba/Home/Model/home_model.dart';

class HomeService {
  static Future getTeams() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));
    var jsonData = jsonDecode(response.body);
    List<TeamModel> teams = [];
    for (var eachTeam in jsonData['data']) {
      final team = TeamModel.fromJson(eachTeam);
      teams.add(team);
    }
    return teams;
  }
}
