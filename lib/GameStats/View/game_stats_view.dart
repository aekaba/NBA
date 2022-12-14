import 'package:flutter/material.dart';
import 'package:nba/GameStats/Model/game_stats_model.dart';
import 'package:nba/GameStats/Service/game_stats_service.dart';
import 'package:nba/TeamsGameDetail/Widgets/games_card_detail_widget.dart';

class GameStatsView extends StatelessWidget {
  final int? gameID;
  final int? homeTeamId;
  const GameStatsView({super.key, this.gameID, required this.homeTeamId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 66, 138, 1),
        title: const Text("Game Stats"),
      ),
      body: FutureBuilder(
        future: GameStatsService.getPlayerStats(gameID),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<GameStats> gameStats = snapshot.data;
            return ListView.builder(
              itemCount: gameStats.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(gameStats[index].player!.firstName.toString());
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
