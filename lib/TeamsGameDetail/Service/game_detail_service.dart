import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nba/TeamsGameDetail/Model/game_model.dart';

class GameDetail {
  static Future getGames(int teamID, season) async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/games'));
    var jsonData = jsonDecode(response.body);
    final games = GamesModel.fromJson(jsonData['data']);

    return games;
  }
}
