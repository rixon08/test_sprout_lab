import 'package:test_sprout_lab/core/injection/injection.dart';
import 'package:test_sprout_lab/features/detail_pokemon/data/repositories/get_detail_pokemon_impl_api.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/repositories/abstract_detail_pokemon_api.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/usecases/get_detail_species_pokemon_usecase.dart';

initDetailPokemonInjections() {
  sl.registerSingleton<AbstractDetailPokemonApi>(GetDetailPokemonImplApi());
  sl.registerSingleton<GetDetailSpeciesPokemonUseCase>(GetDetailSpeciesPokemonUseCase(sl()));
}