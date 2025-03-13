import 'package:get_it/get_it.dart';
import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/core/network/dio_network.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/models/pokemon_detail_species_model.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/repositories/abstract_detail_pokemon_api.dart';

class GetDetailPokemonImplApi extends AbstractDetailPokemonApi{

  final DioNetwork dioNetwork = GetIt.instance<DioNetwork>();

  @override
  Future<ApiResponse<PokemonDetailSpeciesModel?>> getDetailSpeciesPokemon(int pokemonId) async {
    return await dioNetwork.dioGet("/pokemon-species/$pokemonId",(json) {
     return PokemonDetailSpeciesModel.fromJson(json);
    }, {
    });
  }
}