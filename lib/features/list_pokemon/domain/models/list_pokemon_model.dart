import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_pokemon_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ListPokemonModel {
  int count;
  String next;
  dynamic previous;
  List<Result> results;

  ListPokemonModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory ListPokemonModel.fromJson(Map<String, dynamic> json){
    return _$ListPokemonModelFromJson(json);
  }

  static List<ListPokemonModel> fromJsonList(List? json) {
    return json?.map((e) => ListPokemonModel.fromJson(e)).toList() ?? [];
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Result {
  String name;
  String url;

  Result({
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
