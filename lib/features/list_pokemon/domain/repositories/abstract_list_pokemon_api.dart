import 'dart:ffi';

import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/list_pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';

abstract class AbstractListPokemonApi {

  Future<ApiResponse<ListPokemonModel?>> getDataListPokemon(int limit, int offset);

  Future<ApiResponse<PokemonModel?>> getDetailPokemon(String pokemonName);

}