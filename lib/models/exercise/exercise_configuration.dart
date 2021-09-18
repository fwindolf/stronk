import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/exercise_types.dart';

part 'exercise_configuration.freezed.dart';
part 'exercise_configuration.g.dart';

@JsonSerializable()
abstract class ExerciseTypeConfiguration {
  ExerciseType get type;
  Map<String, dynamic> get data;
}

@JsonSerializable()
class BaseExerciseTypeConfiguration {
  BaseExerciseTypeConfiguration();

  factory BaseExerciseTypeConfiguration.fromJson(Map<String, dynamic> json) =>
      _$BaseExerciseTypeConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$BaseExerciseTypeConfigurationToJson(this);
}

@freezed
class SetRepetitionConfiguration with _$SetRepetitionConfiguration {
  static ExerciseType exerciseType = ExerciseType.SetRepetition;
  const SetRepetitionConfiguration._();

  @Implements(ExerciseTypeConfiguration)
  const factory SetRepetitionConfiguration({
    String? id,
    required int repetitions,
    required int sets,
    required int pauseSeconds,
  }) = _SetRepetitionConfiguration;

  factory SetRepetitionConfiguration.empty() => const SetRepetitionConfiguration(
        repetitions: 12,
        sets: 3,
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
  Map<String, dynamic> get configuration => toJson();
}

@freezed
class ThreeToSevenConfiguration with _$ThreeToSevenConfiguration {
  static ExerciseType exerciseType = ExerciseType.ThreeToSeven;
  const ThreeToSevenConfiguration._();

  @Implements(ExerciseTypeConfiguration)
  const factory ThreeToSevenConfiguration({
    String? id,
    @Default(3) int minRepetitions,
    @Default(7) int maxRepetitions,
    @Default(20) int pauseSeconds,
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
  Map<String, dynamic> get configuration => toJson();
}

@freezed
class DoPauseConfiguration with _$DoPauseConfiguration {
  static ExerciseType exerciseType = ExerciseType.DoPause;
  const DoPauseConfiguration._();

  @Implements(ExerciseTypeConfiguration)
  const factory DoPauseConfiguration({
    String? id,
    required int repetitions,
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
  Map<String, dynamic> get configuration => toJson();
}

@freezed
class HoldConfiguration with _$HoldConfiguration {
  static ExerciseType exerciseType = ExerciseType.Hold;
  const HoldConfiguration._();

  @Implements(ExerciseTypeConfiguration)
  const factory HoldConfiguration({
    String? id,
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
  Map<String, dynamic> get configuration => toJson();
}

@freezed
class FlowConfiguration with _$FlowConfiguration {
  static ExerciseType exerciseType = ExerciseType.Flow;
  const FlowConfiguration._();

  @Implements(ExerciseTypeConfiguration)
  const factory FlowConfiguration({
    String? id,
    required int repetitions,
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
  Map<String, dynamic> get configuration => toJson();
}

Map<String, dynamic> _exerciseTypeConfigurationfromJson(ExerciseTypeConfiguration configuration) {
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

ExerciseTypeConfiguration _exerciseTypeConfigurationtoJson(Map<String, dynamic> json) {
  switch (json["type"] as ExerciseType) {
    case ExerciseType.SetRepetition:
      return SetRepetitionConfiguration.fromJson(json) as ExerciseTypeConfiguration;
    case ExerciseType.ThreeToSeven:
      return ThreeToSevenConfiguration.fromJson(json) as ExerciseTypeConfiguration;
    case ExerciseType.DoPause:
      return DoPauseConfiguration.fromJson(json) as ExerciseTypeConfiguration;
    case ExerciseType.Hold:
      return HoldConfiguration.fromJson(json) as ExerciseTypeConfiguration;
    case ExerciseType.Flow:
      return FlowConfiguration.fromJson(json) as ExerciseTypeConfiguration;
    default:
      throw Exception("Can not serialize ExerciseTypeConfiguration from $json");
  }
}
