import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_sprout_lab/core/network/api_response.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/list_pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_data_list_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_detail_pokemon_usecase.dart';

part 'list_pokemon_event.dart';
part 'list_pokemon_state.dart';

class ListPokemonBloc extends Bloc<ListPokemonEvent, ListPokemonState> {

  final GetDataListPokemonUseCase getDataListPokemonUseCase;
  final GetDetailPokemonUseCase getDetailPokemonUseCase;

  int limit = 50;
  int offset = 0;
  List<PokemonModel> _listPokemon = [];


  ListPokemonBloc(this.getDataListPokemonUseCase, this.getDetailPokemonUseCase) : super(ListPokemonInitialState()) {
    
    
    on<RefreshListPokemonEvent>((event, emit) async {
      offset = 0;
      _listPokemon.clear();
      await _getListPokemon();
      emit(ListPokemonFinishGetDataState(_listPokemon));
    });
  }

  Future _getListPokemon() async {
    final resultListPokemonId = await getDataListPokemonUseCase.call(limit, offset);
    if(resultListPokemonId.isSuccess && resultListPokemonId.data != null){
      final listPokemonId = resultListPokemonId.data!.results;
      final listResultDetailPokemon = await Future.wait(listPokemonId.map((pokemonId)=>getDetailPokemonUseCase.call(pokemonId.name)));
      for (final result in listResultDetailPokemon){
        if (result.isSuccess && result.data != null){
          _listPokemon.add(result.data!);
        }
      }

      // final listResultDetailSpecies = await Future.wait(_listPokemon.map((pokemon) => getDetailSpeciesPokemonUseCase.call(pokemon.id)));
      // for (final result in listResultDetailSpecies){
      //   if (result.isSuccess && result.data != null){
      //     int index = _listPokemon.indexWhere((pokemon)=> pokemon.id == result.data!.id);
      //     if (index >= 0){
      //       _listPokemon[index].pokemonColor = result.data!.color;
      //     }
          
      //   }
      // }
      // for (final pokemon in listPokemonId){
      //   final resultDetailPokemon = await getDetailPokemonUseCase.call(pokemon.name);
      //   if (resultDetailPokemon.isSuccess && resultDetailPokemon.data != null){
      //     _listPokemon.add(resultDetailPokemon.data!);
      //   }
      // }
      
    }
  }
}
