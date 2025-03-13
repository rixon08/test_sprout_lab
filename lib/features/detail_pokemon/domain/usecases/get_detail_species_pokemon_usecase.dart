import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/models/pokemon_detail_species_model.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/repositories/abstract_detail_pokemon_api.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/repositories/abstract_list_pokemon_api.dart';

class GetDetailSpeciesPokemonUseCase {
  AbstractDetailPokemonApi repository;

  GetDetailSpeciesPokemonUseCase(this.repository);

  Future<ApiResponse<PokemonDetailSpeciesModel?>> call(int pokemonId) async {
    return await repository.getDetailSpeciesPokemon(pokemonId);
  }
}