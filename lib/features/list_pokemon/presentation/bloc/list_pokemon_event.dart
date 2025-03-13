part of 'list_pokemon_bloc.dart';

@immutable
sealed class ListPokemonEvent {}

class RefreshListPokemonEvent extends ListPokemonEvent{}
