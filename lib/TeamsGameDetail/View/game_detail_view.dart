import 'package:flutter/material.dart';
import 'package:nba/Home/Model/home_model.dart';

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
      body: Container(
        child: Text(""),
      ),
    );
  }
}
