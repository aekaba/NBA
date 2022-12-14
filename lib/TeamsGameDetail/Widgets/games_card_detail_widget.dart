import 'package:flutter/material.dart';
import 'package:nba/GameStats/View/game_stats_view.dart';
import 'package:nba/TeamsGameDetail/Model/game_model.dart';
import 'package:nba/TeamsGameDetail/Widgets/games_home_team_widget.dart';
import 'package:nba/TeamsGameDetail/Widgets/games_status_widget.dart';
import 'package:nba/TeamsGameDetail/Widgets/games_visitor_team_widget.dart';

class GamesCardDetail extends StatelessWidget {
  final GamesModel games;
  const GamesCardDetail({
    Key? key,
    required this.games,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameStatsView(
                gameID: games.id,
                homeTeamId: games.homeTeam!.id,
              ),
            ));
      },
      child: Card(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              GamesHomeTeamWidget(
                data: games.homeTeam!,
                homeTeamScore: games.homeTeamScore!,
              ),
              GamesStatusWidget(
                data: games,
              ),
              GamesVisitorTeamWidget(
                visitorTeamScore: games.visitorTeamScore!,
                data: games.visitorTeam!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
