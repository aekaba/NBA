import 'package:flutter/material.dart';
import 'package:nba/Home/Model/home_model.dart';
import 'package:nba/TeamsGameDetail/Model/game_model.dart';
import 'package:nba/TeamsGameDetail/Service/game_detail_service.dart';
import 'package:nba/TeamsGameDetail/Widgets/games_card_widget.dart';

class GameDetailView extends StatefulWidget {
  final TeamModel team;
  const GameDetailView({super.key, required this.team});

  @override
  State<GameDetailView> createState() => _GameDetailViewState();
}

class _GameDetailViewState extends State<GameDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 66, 138, 1),
        title: Text(widget.team.fullName.toString()),
      ),
      body: FutureBuilder(
        future: GameDetail.getGames(widget.team.id!, 2022),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<GamesModel> games = snapshot.data;
            return GamesCardWidget(
              games: games,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
