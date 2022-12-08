import 'package:flutter/material.dart';
import 'package:nba/Home/Model/home_model.dart';
import 'package:nba/TeamsGameDetail/View/game_detail_view.dart';

class TeamCardWidget extends StatelessWidget {
  final TeamModel teams;
  const TeamCardWidget({
    Key? key,
    required this.teams,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameDetailView(team: teams),
            ));
      },
      child: Card(
        child: ListTile(
          title: Text(teams.name.toString()),
          subtitle: Text(teams.abbreviation.toString()),
        ),
      ),
    );
  }
}
