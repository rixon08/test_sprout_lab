import 'dart:ui';

import 'package:test_sprout_lab/core/models/gender_rate_pokemon_model.dart';

const Map<String, Color> pokemonTypeColors = {
  "normal": Color(0xFFA8A77A),
  "fire": Color(0xFFEE8130),
  "water": Color(0xFF6390F0),
  "electric": Color.fromARGB(255, 231, 192, 40),
  "grass": Color(0xFF7AC74C),
  "ice": Color(0xFF96D9D6),
  "fighting": Color(0xFFC22E28),
  "poison": Color(0xFFA33EA1),
  "ground": Color.fromARGB(255, 169, 143, 76),
  "flying": Color(0xFFA98FF3),
  "psychic": Color(0xFFF95587),
  "bug": Color(0xFFA6B91A),
  "rock": Color(0xFFB6A136),
  "ghost": Color(0xFF735797),
  "dragon": Color(0xFF6F35FC),
  "dark": Color(0xFF705746),
  "steel": Color(0xFFB7B7CE),
  "fairy": Color(0xFFD685AD),
};


// case 0: return "100% Male";
//       case 1: return "87.5% Male / 12.5% Female";
//       case 2: return "75% Male / 25% Female";
//       case 3: return "62.5% Male / 37.5% Female";
//       case 4: return "50% Male / 50% Female";
//       case 5: return "37.5% Male / 62.5% Female";
//       case 6: return "25% Male / 75% Female";
//       case 7: return "12.5% Male / 87.5% Female";
//       case 8: return "100% Female";
//       case -1: return "Genderless";
//       default: return "Unknown";
const Map<int, GenderRatePokemonModel> pokemonGenderRate = {
  0: GenderRatePokemonModel(male: 100, female: 0),
  1: GenderRatePokemonModel(male: 87.5, female: 12.5),
  2: GenderRatePokemonModel(male: 75, female: 25),
  3: GenderRatePokemonModel(male: 62.5, female: 37.5),
  4: GenderRatePokemonModel(male: 50, female: 50),
  5: GenderRatePokemonModel(male: 37.5, female: 62.5),
  6: GenderRatePokemonModel(male: 25, female: 75),
  7: GenderRatePokemonModel(male: 12.5, female: 87.5),
  8: GenderRatePokemonModel(male: 0, female: 100),
  -1: GenderRatePokemonModel(male: -1, female: -1), //"Genderless
};