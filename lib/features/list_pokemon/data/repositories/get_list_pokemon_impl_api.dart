import 'package:get_it/get_it.dart';
import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/core/network/dio_network.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/list_pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/repositories/abstract_list_pokemon_api.dart';

class GetListPokemonImplApi extends AbstractListPokemonApi{

  final DioNetwork dioNetwork = GetIt.instance<DioNetwork>();
  @override
  Future<ApiResponse<ListPokemonModel?>> getDataListPokemon(int limit, int offset) async {
     return await dioNetwork.dioGet("/pokemon",(json) {
      return ListPokemonModel.fromJson(json);
    }, {
      "limit": limit,
      "offset": offset
    });
  }

  @override
  Future<ApiResponse<PokemonModel?>> getDetailPokemon(String pokemonName) async {
    return await dioNetwork.dioGet("/pokemon/$pokemonName",(json) {
     return PokemonModel.fromJson(json);
    }, {
    });
  }

}