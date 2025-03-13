import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'detail_pokemon_event.dart';
part 'detail_pokemon_state.dart';

class DetailPokemonBloc extends Bloc<DetailPokemonEvent, DetailPokemonState> {
  DetailPokemonBloc() : super(DetailPokemonInitialState()) {
    on<DetailPokemonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
