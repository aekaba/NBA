import 'package:flutter/material.dart';
import 'package:nba/TeamsGameDetail/Model/game_model.dart';

class GamesHomeTeamWidget extends StatelessWidget {
  final HomeTeam data;
  final int homeTeamScore;
  const GamesHomeTeamWidget({
    Key? key,
    required this.data,
    required this.homeTeamScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/teamLogos/${data.name}.png",
              height: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              data.name.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              homeTeamScore.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
