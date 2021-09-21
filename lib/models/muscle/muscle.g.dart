// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Muscle _$$_MuscleFromJson(Map<String, dynamic> json) => _$_Muscle(
      id: json['id'] as String?,
      name: json['name'] as String,
      region: _$enumDecodeNullable(_$MuscleRegionEnumMap, json['region']),
      side: _$enumDecodeNullable(_$MuscleSideEnumMap, json['side']),
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$_MuscleToJson(_$_Muscle instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': _$MuscleRegionEnumMap[instance.region],
      'side': _$MuscleSideEnumMap[instance.side],
      'imagePath': instance.imagePath,
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

const _$MuscleRegionEnumMap = {
  MuscleRegion.Neck: 'Neck',
  MuscleRegion.Shoulder: 'Shoulder',
  MuscleRegion.Chest: 'Chest',
  MuscleRegion.Abs: 'Abs',
  MuscleRegion.Back: 'Back',
  MuscleRegion.Glutes: 'Glutes',
  MuscleRegion.Arms: 'Arms',
  MuscleRegion.Legs: 'Legs',
};

const _$MuscleSideEnumMap = {
  MuscleSide.Front: 'Front',
  MuscleSide.Back: 'Back',
  MuscleSide.Both: 'Both',
};
