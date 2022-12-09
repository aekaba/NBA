import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nba/TeamsGameDetail/Model/game_model.dart';

class GameDetail {
  static Future<List<GamesModel>> getGames(int teamID, season) async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/games', {
      'seasons[]': season.toString(),
      'per_page': '25',
      'team_ids[]': teamID.toString(),
    }));
    var jsonData = jsonDecode(response.body);

    List<GamesModel> retgames = [];
    for (var eachGames in jsonData['data']) {
      final games = GamesModel.fromJson(eachGames);
      retgames.add(games);
    }
    return retgames;
  }
}
