part of 'list_pokemon_bloc.dart';

@immutable
sealed class ListPokemonState {}

final class ListPokemonInitialState extends ListPokemonState {}

final class ListPokemonFinishGetDataState extends ListPokemonState {
  final List<PokemonModel> listPokemon;

  ListPokemonFinishGetDataState(this.listPokemon);
}
