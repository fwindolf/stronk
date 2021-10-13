// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseConfiguration _$$_ExerciseConfigurationFromJson(Map<String, dynamic> json) =>
    _$_ExerciseConfiguration(
      type: _$enumDecode(_$ExerciseTypeEnumMap, json['type']),
      sets: (json['sets'] as List<dynamic>)
          .map((e) => ExerciseSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExerciseConfigurationToJson(_$_ExerciseConfiguration instance) =>
    <String, dynamic>{
      'type': _$ExerciseTypeEnumMap[instance.type],
      'sets': instance.sets.map((e) => e.toJson()).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ExerciseTypeEnumMap = {
  ExerciseType.SetRepetition: 'SetRepetition',
  ExerciseType.ThreeToSeven: 'ThreeToSeven',
  ExerciseType.DoPause: 'DoPause',
  ExerciseType.Hold: 'Hold',
  ExerciseType.Flow: 'Flow',
};

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      creator: json['creator'] as String?,
      configuration: ExerciseConfiguration.fromJson(json['configuration'] as Map<String, dynamic>),
      equipment: _$enumDecode(_$EquipmentEnumMap, json['equipment']),
      bandMode: _$enumDecodeNullable(_$BandModeEnumMap, json['bandMode']),
      sideMode: _$enumDecode(_$SideModeEnumMap, json['sideMode']),
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ExerciseTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      muscles: (json['muscles'] as List<dynamic>?)
              ?.map((e) => Muscle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ExerciseToJson(_$_Exercise instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creator': instance.creator,
      'configuration': instance.configuration.toJson(),
      'equipment': _$EquipmentEnumMap[instance.equipment],
      'bandMode': _$BandModeEnumMap[instance.bandMode],
      'sideMode': _$SideModeEnumMap[instance.sideMode],
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'muscles': instance.muscles.map((e) => e.toJson()).toList(),
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
      'isFavourite': instance.isFavourite,
    };

const _$EquipmentEnumMap = {
  Equipment.Band: 'Band',
  Equipment.Dumbbells: 'Dumbbells',
  Equipment.Barbells: 'Barbells',
  Equipment.Bodyweight: 'Bodyweight',
  Equipment.None: 'None',
};

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$BandModeEnumMap = {
  BandMode.Loop: 'Loop',
  BandMode.Double: 'Double',
};

const _$SideModeEnumMap = {
  SideMode.None: 'None',
  SideMode.Single: 'Single',
  SideMode.Both: 'Both',
  SideMode.Alternating: 'Alternating',
};
