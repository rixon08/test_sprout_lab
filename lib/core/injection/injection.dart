import 'package:get_it/get_it.dart';
import 'package:test_sprout_lab/core/network/dio_network.dart';
import 'package:test_sprout_lab/features/detail_pokemon/injection/detail_pokemon_injection.dart';
import 'package:test_sprout_lab/features/list_pokemon/injection/list_pokemon_injection.dart';

final sl = GetIt.instance;

Future<void> initInjections() async {
  initDioInjections();
  initListPokemonInjections();
  initDetailPokemonInjections();
}

initDioInjections() async {
  sl.registerSingleton<DioNetwork>(DioNetwork());
}