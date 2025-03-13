import 'dart:ui' as ui;

import 'package:json_annotation/json_annotation.dart';
import 'package:test_sprout_lab/core/constants/pokemon_constants.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/models/pokemon_detail_species_model.dart';

part 'pokemon_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PokemonModel {
    List<Ability> abilities;
    int baseExperience;
    Cries cries;
    List<Species> forms;
    List<GameIndex> gameIndices;
    int height;
    int id;
    bool isDefault;
    String locationAreaEncounters;
    List<Move> moves;
    String name;
    int order;
    Species species;
    Sprites sprites;
    List<Stat> stats;
    List<Type> types;
    int weight;

    ui.Color get colorPokemon {
      if (types.length > 0){
        return pokemonTypeColors[types[0].type.name]!;
      } else {
        return pokemonTypeColors["normal"]!;
      }
    }

    PokemonModel({
        required this.abilities,
        required this.baseExperience,
        required this.cries,
        required this.forms,
        required this.gameIndices,
        required this.height,
        required this.id,
        required this.isDefault,
        required this.locationAreaEncounters,
        required this.moves,
        required this.name,
        required this.order,
        required this.species,
        required this.sprites,
        required this.stats,
        required this.types,
        required this.weight
    });

    factory PokemonModel.fromJson(Map<String, dynamic> json){
      return _$PokemonModelFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Ability {
    Species ability;
    bool isHidden;
    int slot;

    Ability({
        required this.ability,
        required this.isHidden,
        required this.slot,
    });

    factory Ability.fromJson(Map<String, dynamic> json){
      return _$AbilityFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Species {
    String name;
    String url;
    PokemonDetailSpeciesModel? detailSpecies;

    Species({
        required this.name,
        required this.url,
        this.detailSpecies
    });

    factory Species.fromJson(Map<String, dynamic> json){
      return _$SpeciesFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Cries {
    String latest;
    String legacy;

    Cries({
        required this.latest,
        required this.legacy,
    });

    factory Cries.fromJson(Map<String, dynamic> json){
      return _$CriesFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class GameIndex {
    int gameIndex;
    Species version;

    GameIndex({
        required this.gameIndex,
        required this.version,
    });

    factory GameIndex.fromJson(Map<String, dynamic> json){
      return _$GameIndexFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Move {
    Species move;
    List<VersionGroupDetail> versionGroupDetails;

    Move({
        required this.move,
        required this.versionGroupDetails,
    });

    factory Move.fromJson(Map<String, dynamic> json){
      return _$MoveFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class VersionGroupDetail {
    int levelLearnedAt;
    Species moveLearnMethod;
    Species versionGroup;

    VersionGroupDetail({
        required this.levelLearnedAt,
        required this.moveLearnMethod,
        required this.versionGroup,
    });

    factory VersionGroupDetail.fromJson(Map<String, dynamic> json){
      return _$VersionGroupDetailFromJson(json);
    }

}

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationV {
//     Sprites blackWhite;

//     GenerationV({
//         required this.blackWhite,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationIv {
//     Sprites diamondPearl;
//     Sprites heartgoldSoulsilver;
//     Sprites platinum;

//     GenerationIv({
//         required this.diamondPearl,
//         required this.heartgoldSoulsilver,
//         required this.platinum,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class Versions {
//     GenerationI generationI;
//     GenerationIi generationIi;
//     GenerationIii generationIii;
//     GenerationIv generationIv;
//     GenerationV generationV;
//     Map<String, Home> generationVi;
//     GenerationVii generationVii;
//     GenerationViii generationViii;

//     Versions({
//         required this.generationI,
//         required this.generationIi,
//         required this.generationIii,
//         required this.generationIv,
//         required this.generationV,
//         required this.generationVi,
//         required this.generationVii,
//         required this.generationViii,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class Other {
//     DreamWorld dreamWorld;
//     Home home;
//     OfficialArtwork officialArtwork;
//     Sprites showdown;

//     Other({
//         required this.dreamWorld,
//         required this.home,
//         required this.officialArtwork,
//         required this.showdown,
//     });

// }

@JsonSerializable(fieldRename: FieldRename.snake)
class Sprites {
    String? backDefault;
    String? backFemale;
    String? backShiny;
    String? backShinyFemale;
    String? frontDefault;
    String? frontFemale;
    String? frontShiny;
    String? frontShinyFemale;
    // Other? other;
    // Versions? versions;
    Sprites? animated;

    Sprites({
        required this.backDefault,
        required this.backFemale,
        required this.backShiny,
        required this.backShinyFemale,
        required this.frontDefault,
        required this.frontFemale,
        required this.frontShiny,
        required this.frontShinyFemale,
        // this.other,
        // this.versions,
        this.animated,
    });

    factory Sprites.fromJson(Map<String, dynamic> json){
      return _$SpritesFromJson(json);
    }

}

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationI {
//     RedBlue redBlue;
//     RedBlue yellow;

//     GenerationI({
//         required this.redBlue,
//         required this.yellow,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class RedBlue {
//     String backDefault;
//     String backGray;
//     String backTransparent;
//     String frontDefault;
//     String frontGray;
//     String frontTransparent;

//     RedBlue({
//         required this.backDefault,
//         required this.backGray,
//         required this.backTransparent,
//         required this.frontDefault,
//         required this.frontGray,
//         required this.frontTransparent,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationIi {
//     Crystal crystal;
//     Gold gold;
//     Gold silver;

//     GenerationIi({
//         required this.crystal,
//         required this.gold,
//         required this.silver,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class Crystal {
//     String backDefault;
//     String backShiny;
//     String backShinyTransparent;
//     String backTransparent;
//     String frontDefault;
//     String frontShiny;
//     String frontShinyTransparent;
//     String frontTransparent;

//     Crystal({
//         required this.backDefault,
//         required this.backShiny,
//         required this.backShinyTransparent,
//         required this.backTransparent,
//         required this.frontDefault,
//         required this.frontShiny,
//         required this.frontShinyTransparent,
//         required this.frontTransparent,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class Gold {
//     String backDefault;
//     String backShiny;
//     String frontDefault;
//     String frontShiny;
//     String? frontTransparent;

//     Gold({
//         required this.backDefault,
//         required this.backShiny,
//         required this.frontDefault,
//         required this.frontShiny,
//         this.frontTransparent,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationIii {
//     OfficialArtwork emerald;
//     Gold fireredLeafgreen;
//     Gold rubySapphire;

//     GenerationIii({
//         required this.emerald,
//         required this.fireredLeafgreen,
//         required this.rubySapphire,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class OfficialArtwork {
//     String frontDefault;
//     String frontShiny;

//     OfficialArtwork({
//         required this.frontDefault,
//         required this.frontShiny,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class Home {
//     String frontDefault;
//     String frontFemale;
//     String frontShiny;
//     String frontShinyFemale;

//     Home({
//         required this.frontDefault,
//         required this.frontFemale,
//         required this.frontShiny,
//         required this.frontShinyFemale,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationVii {
//     DreamWorld icons;
//     Home ultraSunUltraMoon;

//     GenerationVii({
//         required this.icons,
//         required this.ultraSunUltraMoon,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class DreamWorld {
//     String frontDefault;
//     dynamic frontFemale;

//     DreamWorld({
//         required this.frontDefault,
//         required this.frontFemale,
//     });

// }

// @JsonSerializable(fieldRename: FieldRename.snake)
// class GenerationViii {
//     DreamWorld icons;

//     GenerationViii({
//         required this.icons,
//     });

// }

@JsonSerializable(fieldRename: FieldRename.snake)
class Stat {
    int baseStat;
    int effort;
    Species stat;

    Stat({
        required this.baseStat,
        required this.effort,
        required this.stat,
    });

    factory Stat.fromJson(Map<String, dynamic> json){
      return _$StatFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Type {
    int slot;
    Species type;

    Type({
        required this.slot,
        required this.type,
    });

    factory Type.fromJson(Map<String, dynamic> json){
      return _$TypeFromJson(json);
    }

}
