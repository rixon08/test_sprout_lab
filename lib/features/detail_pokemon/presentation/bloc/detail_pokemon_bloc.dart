import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/usecases/get_detail_species_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_detail_pokemon_usecase.dart';

part 'detail_pokemon_event.dart';
part 'detail_pokemon_state.dart';

class DetailPokemonBloc extends Bloc<DetailPokemonEvent, DetailPokemonState> {
  final GetDetailSpeciesPokemonUseCase getDetailSpeciesPokemonUseCase;
  final PokemonModel pokemon;

  DetailPokemonBloc(this.pokemon, this.getDetailSpeciesPokemonUseCase) : super(DetailPokemonInitialState()) {
    on<GetDataDetailPokemonEvent>((event, emit) async {
      final result = await getDetailSpeciesPokemonUseCase.call(pokemon.id);
      print("sukses");
    });
  }
}
