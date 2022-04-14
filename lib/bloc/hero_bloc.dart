// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:heroes/bloc/hero_event.dart';
// import 'package:heroes/bloc/hero_state.dart';
// import 'package:heroes/services/hero_repository.dart';
//
// import '../models/hero.dart';
//
// class HeroBloc extends Bloc<HeroEvent, HeroState> {
//   final HeroesRepository heroesRepository;
//   HeroBloc({required this.heroesRepository}) : assert(heroesRepository != null);
//
//   HeroState get initialState => HeroEmptyState();
//
//   Stream<HeroState> mapEventToState(HeroEvent event) async* {
//     if (event is HeroLoadEvent) {
//       yield HeroLoadingState();
//       try {
//         final List<Hero> _loadedUserList = await heroesRepository.getHeroes();
//         yield HeroLoadedState(loadedHero: _loadedUserList);
//       } catch (_) {
//         HeroErrorState();
//       }
//     }
//   }
// }
