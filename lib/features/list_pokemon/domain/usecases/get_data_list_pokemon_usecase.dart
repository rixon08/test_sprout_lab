

import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/list_pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/repositories/abstract_list_pokemon_api.dart';

class GetDataListPokemonUseCase {
  final AbstractListPokemonApi repository;

  GetDataListPokemonUseCase(this.repository);

  Future<ApiResponse<ListPokemonModel?>> call(int limit, int offset) async {
    return await repository.getDataListPokemon(limit, offset);
  }

}