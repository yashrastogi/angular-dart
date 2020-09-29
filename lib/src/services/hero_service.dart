import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:angular_app/src/models/hero.dart';

class HeroService {
  Future<List<Hero>> getAll() async {
    List<Hero> heroes = List();
    http.Response res = await http.get("https://5f7225746833480016a9b568.mockapi.io/api/heroes");
    if (res.statusCode == 200) {
      List<dynamic> data = jsonDecode(res.body);
      data.forEach((json) => heroes.add(Hero.fromJson(json)));
    }
    return heroes;
  }
}
