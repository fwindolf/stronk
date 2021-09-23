import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/exercise_types.dart';

part 'exercise_configuration.freezed.dart';
part 'exercise_configuration.g.dart';

abstract class ExerciseTypeConfiguration {
  ExerciseType get type;
  Map<String, dynamic> get data;
  double get weight;
}

@JsonSerializable()
class BaseExerciseTypeConfiguration implements ExerciseTypeConfiguration {
  BaseExerciseTypeConfiguration();

  factory BaseExerciseTypeConfiguration.fromJson(Map<String, dynamic> json) =>
      _$BaseExerciseTypeConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$BaseExerciseTypeConfigurationToJson(this);

  static BaseExerciseTypeConfiguration? fromType(ExerciseType type) {
    switch (type) {
      case ExerciseType.SetRepetition:
        return SetRepetitionConfiguration.empty() as BaseExerciseTypeConfiguration;
      case ExerciseType.ThreeToSeven:
        return ThreeToSevenConfiguration.empty() as BaseExerciseTypeConfiguration;
      case ExerciseType.DoPause:
        return ThreeToSevenConfiguration.empty() as BaseExerciseTypeConfiguration;
      case ExerciseType.Hold:
        return ThreeToSevenConfiguration.empty() as BaseExerciseTypeConfiguration;
      case ExerciseType.Flow:
        return ThreeToSevenConfiguration.empty() as BaseExerciseTypeConfiguration;
      default:
        return null;
    }
  }

  ExerciseType get type => throw UnimplementedError();
  Map<String, dynamic> get data => throw UnimplementedError();
  double get loadEquivalent => throw UnimplementedError();
  double get weight => throw UnimplementedError();
}

@freezed
class SetRepetitionConfiguration with _$SetRepetitionConfiguration {
  static ExerciseType exerciseType = ExerciseType.SetRepetition;
  static double loadFactor = 1.0;

  const SetRepetitionConfiguration._();

  @Implements(BaseExerciseTypeConfiguration)
  const factory SetRepetitionConfiguration({
    String? id,
    required int repetitions,
    required int sets,
    required double weightKg,
    required int pauseSeconds,
  }) = _SetRepetitionConfiguration;

  factory SetRepetitionConfiguration.empty() => const SetRepetitionConfiguration(
        repetitions: 12,
        sets: 3,
        weightKg: 100,
        pauseSeconds: 120,
      );

  factory SetRepetitionConfiguration.fromJson(Map<String, dynamic> json) =>
      _$SetRepetitionConfigurationFromJson(json);

  factory SetRepetitionConfiguration.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return SetRepetitionConfiguration.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  ExerciseType get type => exerciseType;
  Map<String, dynamic> get data => toJson();
  double get loadEquivalent => sets * repetitions * weightKg;
  double get weight => weightKg;
}

@freezed
class ThreeToSevenConfiguration with _$ThreeToSevenConfiguration {
  static ExerciseType exerciseType = ExerciseType.ThreeToSeven;
  static double loadFactor = 1.2;

  const ThreeToSevenConfiguration._();

  @Implements(BaseExerciseTypeConfiguration)
  const factory ThreeToSevenConfiguration({
    String? id,
    @Default(1) int sets,
    @Default(3) int minRepetitions,
    @Default(7) int maxRepetitions,
    double? weightKg,
    @Default(15) int pauseSeconds,
  }) = _ThreeToSevenConfiguration;

  factory ThreeToSevenConfiguration.empty() => const ThreeToSevenConfiguration();

  factory ThreeToSevenConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ThreeToSevenConfigurationFromJson(json);

  factory ThreeToSevenConfiguration.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return ThreeToSevenConfiguration.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  ExerciseType get type => exerciseType;
  Map<String, dynamic> get data => toJson();
  double get loadEquivalent {
    final totalReps =
        List<int>.generate((maxRepetitions - minRepetitions), (int index) => minRepetitions + index)
            .fold(0, (int a, b) => a + b);
    return totalReps * (weightKg ?? 1) * loadFactor;
  }

  double get weight => weightKg ?? 1;
}

@freezed
class DoPauseConfiguration with _$DoPauseConfiguration {
  static ExerciseType exerciseType = ExerciseType.DoPause;
  static double loadFactor = 1.0;

  const DoPauseConfiguration._();

  @Implements(BaseExerciseTypeConfiguration)
  const factory DoPauseConfiguration({
    String? id,
    required int repetitions,
    double? weightKg,
    @Default(20) int pauseSeconds,
  }) = _DoPauseConfiguration;

  factory DoPauseConfiguration.empty() => const DoPauseConfiguration(repetitions: 25);

  factory DoPauseConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DoPauseConfigurationFromJson(json);

  factory DoPauseConfiguration.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return DoPauseConfiguration.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  ExerciseType get type => exerciseType;
  Map<String, dynamic> get data => toJson();
  double get loadEquivalent => repetitions * (weightKg ?? 1);
  double get weight => weightKg ?? 1;
}

@freezed
class HoldConfiguration with _$HoldConfiguration {
  static ExerciseType exerciseType = ExerciseType.Hold;
  const HoldConfiguration._();

  @Implements(BaseExerciseTypeConfiguration)
  const factory HoldConfiguration({
    String? id,
    double? weightKg,
    @Default(60) int holdSeconds,
  }) = _HoldConfiguration;

  factory HoldConfiguration.empty() => const HoldConfiguration();

  factory HoldConfiguration.fromJson(Map<String, dynamic> json) =>
      _$HoldConfigurationFromJson(json);

  factory HoldConfiguration.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return HoldConfiguration.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  ExerciseType get type => exerciseType;
  Map<String, dynamic> get data => toJson();
  double get loadEquivalent => holdSeconds * (weightKg ?? 1);
  double get weight => weightKg ?? 1;
}

@freezed
class FlowConfiguration with _$FlowConfiguration {
  static ExerciseType exerciseType = ExerciseType.Flow;
  const FlowConfiguration._();

  @Implements(BaseExerciseTypeConfiguration)
  const factory FlowConfiguration({
    String? id,
    required int repetitions,
    double? weightKg,
  }) = _FlowConfiguration;

  factory FlowConfiguration.empty() => const FlowConfiguration(repetitions: 12);

  factory FlowConfiguration.fromJson(Map<String, dynamic> json) =>
      _$FlowConfigurationFromJson(json);

  factory FlowConfiguration.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return FlowConfiguration.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  ExerciseType get type => exerciseType;
  Map<String, dynamic> get data => toJson();
  double get loadEquivalent => repetitions * (weightKg ?? 1);
  double get weight => weightKg ?? 1;
}

Map<String, dynamic> _exerciseTypeConfigurationfromJson(
    BaseExerciseTypeConfiguration configuration) {
  switch (configuration.runtimeType) {
    case SetRepetitionConfiguration:
      return (configuration as SetRepetitionConfiguration).toJson();
    case ThreeToSevenConfiguration:
      return (configuration as ThreeToSevenConfiguration).toJson();
    case DoPauseConfiguration:
      return (configuration as DoPauseConfiguration).toJson();
    case HoldConfiguration:
      return (configuration as HoldConfiguration).toJson();
    case FlowConfiguration:
      return (configuration as FlowConfiguration).toJson();
    default:
      throw Exception("Can not deserialize ExerciseTypeConfiguration $configuration");
  }
}

BaseExerciseTypeConfiguration _exerciseTypeConfigurationtoJson(Map<String, dynamic> json) {
  switch (json["type"] as ExerciseType) {
    case ExerciseType.SetRepetition:
      return SetRepetitionConfiguration.fromJson(json) as BaseExerciseTypeConfiguration;
    case ExerciseType.ThreeToSeven:
      return ThreeToSevenConfiguration.fromJson(json) as BaseExerciseTypeConfiguration;
    case ExerciseType.DoPause:
      return DoPauseConfiguration.fromJson(json) as BaseExerciseTypeConfiguration;
    case ExerciseType.Hold:
      return HoldConfiguration.fromJson(json) as BaseExerciseTypeConfiguration;
    case ExerciseType.Flow:
      return FlowConfiguration.fromJson(json) as BaseExerciseTypeConfiguration;
    default:
      throw Exception("Can not serialize ExerciseTypeConfiguration from $json");
  }
}
