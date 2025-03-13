import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/repositories/abstract_list_pokemon_api.dart';

class GetDetailPokemonUseCase {
  final AbstractListPokemonApi repository;

  GetDetailPokemonUseCase(this.repository);

  Future<ApiResponse<PokemonModel?>> call(String pokemonName) async {
    return await repository.getDetailPokemon(pokemonName);
  }
}