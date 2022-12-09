import 'package:flutter/material.dart';
import 'package:nba/TeamsGameDetail/Model/game_model.dart';

class GamesVisitorTeamWidget extends StatelessWidget {
  final HomeTeam data;
  final int visitorTeamScore;
  const GamesVisitorTeamWidget({
    Key? key,
    required this.data,
    required this.visitorTeamScore,
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
              visitorTeamScore.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
