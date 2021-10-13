// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BandEquipment _$$_BandEquipmentFromJson(Map<String, dynamic> json) =>
    _$_BandEquipment(
      id: json['id'] as String?,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: _$enumDecode(_$BandModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$$_BandEquipmentToJson(_$_BandEquipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
      'mode': _$BandModeEnumMap[instance.mode],
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

const _$BandModeEnumMap = {
  BandMode.Loop: 'Loop',
  BandMode.Double: 'Double',
};

_$_DumbbellEquipment _$$_DumbbellEquipmentFromJson(Map<String, dynamic> json) =>
    _$_DumbbellEquipment(
      id: json['id'] as String?,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: _$enumDecode(_$SideModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$$_DumbbellEquipmentToJson(
        _$_DumbbellEquipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
      'mode': _$SideModeEnumMap[instance.mode],
    };

const _$SideModeEnumMap = {
  SideMode.Single: 'Single',
  SideMode.Both: 'Both',
  SideMode.Alternating: 'Alternating',
};
