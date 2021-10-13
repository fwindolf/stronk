// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Challenge _$$_ChallengeFromJson(Map<String, dynamic> json) => _$_Challenge(
      id: json['id'] as String?,
      exerciseId: json['exerciseId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      creator: json['creator'] as String?,
      configuration: ExerciseConfiguration.fromJson(
          json['configuration'] as Map<String, dynamic>),
      equipment: _$enumDecode(_$EquipmentEnumMap, json['equipment']),
      sideMode: _$enumDecode(_$SideModeEnumMap, json['sideMode']),
      startDate: DateTime.parse(json['startDate'] as String),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_ChallengeToJson(_$_Challenge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exerciseId': instance.exerciseId,
      'name': instance.name,
      'description': instance.description,
      'creator': instance.creator,
      'configuration': instance.configuration.toJson(),
      'equipment': _$EquipmentEnumMap[instance.equipment],
      'sideMode': _$SideModeEnumMap[instance.sideMode],
      'startDate': instance.startDate.toIso8601String(),
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
      'endDate': instance.endDate?.toIso8601String(),
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

const _$EquipmentEnumMap = {
  Equipment.Band: 'Band',
  Equipment.Dumbbells: 'Dumbbells',
  Equipment.Barbells: 'Barbells',
  Equipment.Bodyweight: 'Bodyweight',
  Equipment.None: 'None',
};

const _$SideModeEnumMap = {
  SideMode.None: 'None',
  SideMode.Single: 'Single',
  SideMode.Both: 'Both',
  SideMode.Alternating: 'Alternating',
};
