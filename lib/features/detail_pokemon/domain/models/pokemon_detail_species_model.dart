
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_detail_species_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PokemonDetailSpeciesModel {
    int baseHappiness;
    int captureRate;
    Color color;
    List<Color> eggGroups;
    EvolutionChain evolutionChain;
    dynamic evolvesFromSpecies;
    List<FlavorTextEntry> flavorTextEntries;
    bool formsSwitchable;
    int genderRate;
    List<Genus> genera;
    Color generation;
    Color growthRate;
    Color habitat;
    bool hasGenderDifferences;
    int hatchCounter;
    int id;
    bool isBaby;
    bool isLegendary;
    bool isMythical;
    String name;
    List<Name> names;
    int order;
    List<PalParkEncounter> palParkEncounters;
    List<PokedexNumber> pokedexNumbers;
    Color shape;
    List<Variety> varieties;

    PokemonDetailSpeciesModel({
        required this.baseHappiness,
        required this.captureRate,
        required this.color,
        required this.eggGroups,
        required this.evolutionChain,
        required this.evolvesFromSpecies,
        required this.flavorTextEntries,
        required this.formsSwitchable,
        required this.genderRate,
        required this.genera,
        required this.generation,
        required this.growthRate,
        required this.habitat,
        required this.hasGenderDifferences,
        required this.hatchCounter,
        required this.id,
        required this.isBaby,
        required this.isLegendary,
        required this.isMythical,
        required this.name,
        required this.names,
        required this.order,
        required this.palParkEncounters,
        required this.pokedexNumbers,
        required this.shape,
        required this.varieties,
    });

    factory PokemonDetailSpeciesModel.fromJson(Map<String, dynamic> json){
      return _$PokemonDetailSpeciesModelFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Color {
    String name;
    String url;

    Color({
        required this.name,
        required this.url,
    });

    factory Color.fromJson(Map<String, dynamic> json){
      return _$ColorFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class EvolutionChain {
    String url;

    EvolutionChain({
        required this.url,
    });

    factory EvolutionChain.fromJson(Map<String, dynamic> json){
      return _$EvolutionChainFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class FlavorTextEntry {
    String flavorText;
    Color language;
    Color version;

    FlavorTextEntry({
        required this.flavorText,
        required this.language,
        required this.version,
    });

    factory FlavorTextEntry.fromJson(Map<String, dynamic> json){
      return _$FlavorTextEntryFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Genus {
    String genus;
    Color language;

    Genus({
        required this.genus,
        required this.language,
    });

    factory Genus.fromJson(Map<String, dynamic> json){
      return _$GenusFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Name {
    Color language;
    String name;

    Name({
        required this.language,
        required this.name,
    });

    factory Name.fromJson(Map<String, dynamic> json){
      return _$NameFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class PalParkEncounter {
    Color area;
    int baseScore;
    int rate;

    PalParkEncounter({
        required this.area,
        required this.baseScore,
        required this.rate,
    });

    factory PalParkEncounter.fromJson(Map<String, dynamic> json){
      return _$PalParkEncounterFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class PokedexNumber {
    int entryNumber;
    Color pokedex;

    PokedexNumber({
        required this.entryNumber,
        required this.pokedex,
    });

    factory PokedexNumber.fromJson(Map<String, dynamic> json){
      return _$PokedexNumberFromJson(json);
    }

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Variety {
    bool isDefault;
    Color pokemon;

    Variety({
        required this.isDefault,
        required this.pokemon,
    });

    factory Variety.fromJson(Map<String, dynamic> json){
      return _$VarietyFromJson(json);
    }

}
