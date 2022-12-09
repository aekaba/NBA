import 'package:flutter/material.dart';
import 'package:nba/TeamsGameDetail/Model/game_model.dart';

class GamesStatusWidget extends StatelessWidget {
  final GamesModel data;
  const GamesStatusWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(data.date.toString());

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "${date.month}/${date.day}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "${data.season}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "${data.time}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            data.homeTeamScore! > data.visitorTeamScore!
                ? const Icon(Icons.keyboard_arrow_left)
                : const Icon(Icons.keyboard_arrow_right)
          ],
        ),
      ),
    );
  }
}
