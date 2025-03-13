import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/models/pokemon_detail_species_model.dart';

abstract class AbstractDetailPokemonApi {
  Future<ApiResponse<PokemonDetailSpeciesModel?>> getDetailSpeciesPokemon(int pokemonId);
}