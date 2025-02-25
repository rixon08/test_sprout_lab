import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'list_pokemon_event.dart';
part 'list_pokemon_state.dart';

class ListPokemonBloc extends Bloc<ListPokemonEvent, ListPokemonState> {
  ListPokemonBloc() : super(ListPokemonInitial()) {
    on<ListPokemonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
