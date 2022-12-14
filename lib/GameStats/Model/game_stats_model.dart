// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class GameStats {
  int? id;
  int? ast;
  int? blk;
  int? dreb;
  double? fg3Pct;
  int? fg3a;
  int? fg3m;
  double? fgPct;
  int? fga;
  int? fgm;
  double? ftPct;
  int? fta;
  int? ftm;
  Game? game;
  String? min;
  int? oreb;
  int? pf;
  Player? player;
  int? pts;
  int? reb;
  int? stl;
  Team? team;
  int? turnover;

  GameStats(
      {this.id,
      this.ast,
      this.blk,
      this.dreb,
      this.fg3Pct,
      this.fg3a,
      this.fg3m,
      this.fgPct,
      this.fga,
      this.fgm,
      this.ftPct,
      this.fta,
      this.ftm,
      this.game,
      this.min,
      this.oreb,
      this.pf,
      this.player,
      this.pts,
      this.reb,
      this.stl,
      this.team,
      this.turnover});

  GameStats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ast = json['ast'];
    blk = json['blk'];
    dreb = json['dreb'];
    fg3Pct = json['fg3_pct'];
    fg3a = json['fg3a'];
    fg3m = json['fg3m'];
    fgPct = json['fg_pct'];
    fga = json['fga'];
    fgm = json['fgm'];
    ftPct = json['ft_pct'];
    fta = json['fta'];
    ftm = json['ftm'];
    game = json['game'] != null ? new Game.fromJson(json['game']) : null;
    min = json['min'];
    oreb = json['oreb'];
    pf = json['pf'];
    player =
        json['player'] != null ? new Player.fromJson(json['player']) : null;
    pts = json['pts'];
    reb = json['reb'];
    stl = json['stl'];
    team = json['team'] != null ? new Team.fromJson(json['team']) : null;
    turnover = json['turnover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ast'] = this.ast;
    data['blk'] = this.blk;
    data['dreb'] = this.dreb;
    data['fg3_pct'] = this.fg3Pct;
    data['fg3a'] = this.fg3a;
    data['fg3m'] = this.fg3m;
    data['fg_pct'] = this.fgPct;
    data['fga'] = this.fga;
    data['fgm'] = this.fgm;
    data['ft_pct'] = this.ftPct;
    data['fta'] = this.fta;
    data['ftm'] = this.ftm;
    if (this.game != null) {
      data['game'] = this.game!.toJson();
    }
    data['min'] = this.min;
    data['oreb'] = this.oreb;
    data['pf'] = this.pf;
    if (this.player != null) {
      data['player'] = this.player!.toJson();
    }
    data['pts'] = this.pts;
    data['reb'] = this.reb;
    data['stl'] = this.stl;
    if (this.team != null) {
      data['team'] = this.team!.toJson();
    }
    data['turnover'] = this.turnover;
    return data;
  }
}

class Game {
  int? id;
  String? date;
  int? homeTeamId;
  int? homeTeamScore;
  int? period;
  bool? postseason;
  int? season;
  String? status;
  String? time;
  int? visitorTeamId;
  int? visitorTeamScore;

  Game(
      {this.id,
      this.date,
      this.homeTeamId,
      this.homeTeamScore,
      this.period,
      this.postseason,
      this.season,
      this.status,
      this.time,
      this.visitorTeamId,
      this.visitorTeamScore});

  Game.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    homeTeamId = json['home_team_id'];
    homeTeamScore = json['home_team_score'];
    period = json['period'];
    postseason = json['postseason'];
    season = json['season'];
    status = json['status'];
    time = json['time'];
    visitorTeamId = json['visitor_team_id'];
    visitorTeamScore = json['visitor_team_score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['home_team_id'] = this.homeTeamId;
    data['home_team_score'] = this.homeTeamScore;
    data['period'] = this.period;
    data['postseason'] = this.postseason;
    data['season'] = this.season;
    data['status'] = this.status;
    data['time'] = this.time;
    data['visitor_team_id'] = this.visitorTeamId;
    data['visitor_team_score'] = this.visitorTeamScore;
    return data;
  }
}

class Player {
  int? id;
  String? firstName;
  int? heightFeet;
  int? heightInches;
  String? lastName;
  String? position;
  int? teamId;
  int? weightPounds;

  Player(
      {this.id,
      this.firstName,
      this.heightFeet,
      this.heightInches,
      this.lastName,
      this.position,
      this.teamId,
      this.weightPounds});

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    heightFeet = json['height_feet'];
    heightInches = json['height_inches'];
    lastName = json['last_name'];
    position = json['position'];
    teamId = json['team_id'];
    weightPounds = json['weight_pounds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['height_feet'] = this.heightFeet;
    data['height_inches'] = this.heightInches;
    data['last_name'] = this.lastName;
    data['position'] = this.position;
    data['team_id'] = this.teamId;
    data['weight_pounds'] = this.weightPounds;
    return data;
  }
}

class Team {
  int? id;
  String? abbreviation;
  String? city;
  String? conference;
  String? division;
  String? fullName;
  String? name;

  Team(
      {this.id,
      this.abbreviation,
      this.city,
      this.conference,
      this.division,
      this.fullName,
      this.name});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    abbreviation = json['abbreviation'];
    city = json['city'];
    conference = json['conference'];
    division = json['division'];
    fullName = json['full_name'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['abbreviation'] = this.abbreviation;
    data['city'] = this.city;
    data['conference'] = this.conference;
    data['division'] = this.division;
    data['full_name'] = this.fullName;
    data['name'] = this.name;
    return data;
  }
}

class Meta {
  int? totalPages;
  int? currentPage;
  Null? nextPage;
  int? perPage;
  int? totalCount;

  Meta(
      {this.totalPages,
      this.currentPage,
      this.nextPage,
      this.perPage,
      this.totalCount});

  Meta.fromJson(Map<String, dynamic> json) {
    totalPages = json['total_pages'];
    currentPage = json['current_page'];
    nextPage = json['next_page'];
    perPage = json['per_page'];
    totalCount = json['total_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_pages'] = this.totalPages;
    data['current_page'] = this.currentPage;
    data['next_page'] = this.nextPage;
    data['per_page'] = this.perPage;
    data['total_count'] = this.totalCount;
    return data;
  }
}
