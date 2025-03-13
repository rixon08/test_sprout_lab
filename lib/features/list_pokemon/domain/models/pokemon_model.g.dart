// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) => PokemonModel(
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: (json['base_experience'] as num).toInt(),
      cries: Cries.fromJson(json['cries'] as Map<String, dynamic>),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>)
          .map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      isDefault: json['is_default'] as bool,
      locationAreaEncounters: json['location_area_encounters'] as String,
      moves: (json['moves'] as List<dynamic>)
          .map((e) => Move.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      species: Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'cries': instance.cries,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      ability: Species.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) => Species(
      name: json['name'] as String,
      url: json['url'] as String,
      detailSpecies: json['detail_species'] == null
          ? null
          : PokemonDetailSpeciesModel.fromJson(
              json['detail_species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'detail_species': instance.detailSpecies,
    };

Cries _$CriesFromJson(Map<String, dynamic> json) => Cries(
      latest: json['latest'] as String,
      legacy: json['legacy'] as String,
    );

Map<String, dynamic> _$CriesToJson(Cries instance) => <String, dynamic>{
      'latest': instance.latest,
      'legacy': instance.legacy,
    };

GameIndex _$GameIndexFromJson(Map<String, dynamic> json) => GameIndex(
      gameIndex: (json['game_index'] as num).toInt(),
      version: Species.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndexToJson(GameIndex instance) => <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version,
    };

Move _$MoveFromJson(Map<String, dynamic> json) => Move(
      move: Species.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>)
          .map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.versionGroupDetails,
    };

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) =>
    VersionGroupDetail(
      levelLearnedAt: (json['level_learned_at'] as num).toInt(),
      moveLearnMethod:
          Species.fromJson(json['move_learn_method'] as Map<String, dynamic>),
      versionGroup:
          Species.fromJson(json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGroupDetailToJson(VersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'move_learn_method': instance.moveLearnMethod,
      'version_group': instance.versionGroup,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) => Sprites(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
      animated: json['animated'] == null
          ? null
          : Sprites.fromJson(json['animated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'animated': instance.animated,
    };

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: Species.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      slot: (json['slot'] as num).toInt(),
      type: Species.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
