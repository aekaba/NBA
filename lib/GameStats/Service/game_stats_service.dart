import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nba/GameStats/Model/game_stats_model.dart';

class GameStatsService {
  static Future<List<GameStats>> getPlayerStats(int? gameID) async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/stats', {
      'per_page': '50',
      'game_ids[]': gameID.toString(),
    }));
    var jsonData = jsonDecode(response.body);

    List<GameStats> retgames = [];
    for (var eachGames in jsonData['data']) {
      final games = GameStats.fromJson(eachGames);
      retgames.add(games);
    }
    return retgames;
  }
}
