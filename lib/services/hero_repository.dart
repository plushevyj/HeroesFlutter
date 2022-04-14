import 'package:heroes/models/hero.dart';
import 'package:heroes/services/hero_api_provider.dart';

class HeroesRepository {
  final HeroApiProvider _heroApiProvider = HeroApiProvider();
  Future<List<Hero>> getHeroes() => _heroApiProvider.getHeroes();
}