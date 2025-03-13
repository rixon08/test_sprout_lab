part of 'detail_pokemon_bloc.dart';

@immutable
sealed class DetailPokemonState {}

final class DetailPokemonInitialState extends DetailPokemonState {}

final class FinishGetDataDetailPokemonState extends DetailPokemonState {}
