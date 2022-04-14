import 'dart:convert';
import 'dart:io';

import '../models/hero.dart';

class HeroApiProvider {
  final client = HttpClient();

  Future<List<Hero>> getHeroes() async {
    final json = await get('demos/marvel/') as List<dynamic>;
    final heroes = json.map((dynamic element) => Hero.fromJson(element as Map<String, dynamic>)).toList();
    return heroes;
  }

  Future<dynamic> get(String endPoint) async {
    // final url = Uri.parse('https://www.simplifiedcoding.net/demos/marvel/');
    final url = Uri(scheme: 'https', host: 'www.simplifiedcoding.net', path: endPoint);
    final request = await client.getUrl(url);
    final response = await request.close();

    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();

    final dynamic json = jsonDecode(jsonString);
    print(json);
    return json;

  }
}