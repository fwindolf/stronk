import 'dart:math';

class ConversionHelper {
  final int sets;
  final int repetitions;
  final double weight;
  final double factor;

  const ConversionHelper({
    this.sets = 1,
    required this.repetitions,
    required this.weight,
    required this.factor,
  });

  double get totalLoad => sets * repetitions * weight * factor;
}

class Converter {
  static List<ConversionHelper> candidates({
    required List<int> sets,
    required List<int> repetitions,
    required double weight,
    required double factor,
  }) {
    List<ConversionHelper> conversions = [];

    assert(sets.length == 2);
    final minSets = max(sets[0], 1);
    final maxSets = sets[1];
    final setCandidates = List.generate(maxSets - minSets + 1, (i) => minSets + i);

    assert(repetitions.length >= 2);
    var repCandidates;
    if (repetitions.length == 2) {
      final minReps = max(repetitions[0], 1);
      final maxReps = repetitions[1];
      repCandidates = List.generate(minReps - maxReps + 1, (i) => minReps + i);
    } else {
      repCandidates = repetitions;
    }

    setCandidates.forEach((set) {
      repCandidates.forEach((rep) {
        conversions.add(
          ConversionHelper(
            sets: set,
            repetitions: rep,
            weight: weight,
            factor: factor,
          ),
        );
      });
    });

    return conversions;
  }

  static ConversionHelper best(
    List<ConversionHelper> candidates,
    double targetLoad,
  ) {
    ConversionHelper? best = null;
    double bestDiff = double.infinity;

    candidates.forEach((helper) {
      final diff = (helper.totalLoad - targetLoad).abs();
      if (best == null || diff < bestDiff) {
        best = helper;
        bestDiff = diff;
      }
    });

    return best!;
  }
}

// extension SetRepetitionConversion on SetRepetitionConfiguration {
//   List<ConversionHelper> conversionCandidates(double weight) {
//     return Converter.candidates(
//       sets: [1, 6],
//       repetitions: [8, 15],
//       weight: weight,
//       factor: SetRepetitionConfiguration.loadFactor,
//     );
//   }

//   static SetRepetitionConfiguration fromOther(BaseExerciseTypeConfiguration config) {
//     ConversionHelper best = Converter.best(
//       DoPauseConversion.conversionCandidates(config.weight),
//       config.loadEquivalent,
//     );

//     return SetRepetitionConfiguration(
//       sets: best.sets,
//       repetitions: best.repetitions,
//       pauseSeconds: 120,
//       weightKg: config.weight,
//     );
//   }
// }

// extension ThreeToSevenConversion on ThreeToSevenConfiguration {
//   static List<ConversionHelper> conversionCandidates(double weight) {
//     return Converter.candidates(
//       sets: [1, 2],
//       repetitions: [20, 25, 30, 35],
//       weight: weight,
//       factor: ThreeToSevenConfiguration.loadFactor,
//     );
//   }

//   static ThreeToSevenConfiguration fromOther(BaseExerciseTypeConfiguration config) {
//     ConversionHelper best = Converter.best(
//       ThreeToSevenConversion.conversionCandidates(config.weight),
//       config.loadEquivalent,
//     );

//     return ThreeToSevenConfiguration(
//       minRepetitions: (best.repetitions - 10) / 5 as int,
//       maxRepetitions: (best.repetitions - 10) / 5 + 4 as int,
//       pauseSeconds: 15,
//       weightKg: config.weight,
//       sets: best.sets,
//     );
//   }
// }

// extension DoPauseConversion on DoPauseConfiguration {
//   static List<ConversionHelper> conversionCandidates(double weight) {
//     return Converter.candidates(
//       sets: [1, 1],
//       repetitions: [1, 40],
//       weight: weight,
//       factor: DoPauseConfiguration.loadFactor,
//     );
//   }

//   static DoPauseConfiguration fromOther(BaseExerciseTypeConfiguration config) {
//     ConversionHelper best = Converter.best(
//       DoPauseConversion.conversionCandidates(config.weight),
//       config.loadEquivalent,
//     );

//     return DoPauseConfiguration(
//       repetitions: best.repetitions,
//       pauseSeconds: 20,
//       weightKg: config.weight,
//     );
//   }
// }
