// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nba/Home/Model/home_model.dart';
import 'package:nba/Home/Service/home_service.dart';
import 'package:nba/Home/Widgets/team_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(29, 66, 138, 1),
          title: const Text("NBA"),
        ),
        body: SafeArea(
          child: FutureBuilder(
            future: HomeService.getTeams(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<TeamModel> teams = snapshot.data;
                return ListView.builder(
                  itemCount: teams.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TeamCardWidget(
                      teams: teams[index],
                    );
                  },
                );
              } else {
                return Center(child: SvgPicture.asset("assets/svgs/nba.svg"));
              }
            },
          ),
        ),
      ),
    );
  }
}
