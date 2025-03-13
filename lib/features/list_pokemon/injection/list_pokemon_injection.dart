import 'package:test_sprout_lab/core/injection/injection.dart';
import 'package:test_sprout_lab/features/list_pokemon/data/repositories/get_list_pokemon_impl_api.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/repositories/abstract_list_pokemon_api.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_data_list_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_detail_pokemon_usecase.dart';

initListPokemonInjections() {
  sl.registerSingleton<AbstractListPokemonApi>(GetListPokemonImplApi());
  sl.registerSingleton<GetDataListPokemonUseCase>(GetDataListPokemonUseCase(sl()));
  sl.registerSingleton<GetDetailPokemonUseCase>(GetDetailPokemonUseCase(sl()));
}