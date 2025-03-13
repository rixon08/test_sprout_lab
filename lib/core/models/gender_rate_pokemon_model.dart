import 'package:test_sprout_lab/core/utils/convert_to_string.dart';

class GenderRatePokemonModel{
  final double male;
  final double female;

  const GenderRatePokemonModel({
    required this.male,
    required this.female
  });

  String get malePercentString => formatDoubleToStringPercent(male);

  String get femalePercentString => formatDoubleToStringPercent(female);
}