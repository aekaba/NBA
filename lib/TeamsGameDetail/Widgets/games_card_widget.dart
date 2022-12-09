import 'package:flutter/material.dart';
import 'package:nba/TeamsGameDetail/Model/game_model.dart';
import 'package:nba/TeamsGameDetail/Widgets/games_card_detail_widget.dart';

class GamesCardWidget extends StatelessWidget {
  final List<GamesModel> games;
  const GamesCardWidget({
    Key? key,
    required this.games,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GamesCardDetail(
            games: games[index],
          ),
        );
      },
    );
  }
}
