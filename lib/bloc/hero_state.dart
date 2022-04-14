import 'package:flutter/foundation.dart';

abstract class HeroState {}

class HeroEmptyState extends HeroState {}

class HeroLoadingState extends HeroState {}

class HeroLoadedState extends HeroState {
  List<dynamic> loadedHero;
  HeroLoadedState({required this.loadedHero}) : assert(loadedHero != null);
}

class HeroErrorState extends HeroState {}