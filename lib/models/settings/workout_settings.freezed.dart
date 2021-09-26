// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutSettings _$WorkoutSettingsFromJson(Map<String, dynamic> json) {
  return _WorkoutSettings.fromJson(json);
}

/// @nodoc
class _$WorkoutSettingsTearOff {
  const _$WorkoutSettingsTearOff();

  _WorkoutSettings call(
      {required Map<Timeframe, int> sessionGoals,
      required Unit unit,
      required List<ReminderTimeslot> slotChoices,
      required List<Reminder> reminders}) {
    return _WorkoutSettings(
      sessionGoals: sessionGoals,
      unit: unit,
      slotChoices: slotChoices,
      reminders: reminders,
    );
  }

  WorkoutSettings fromJson(Map<String, Object> json) {
    return WorkoutSettings.fromJson(json);
  }
}

/// @nodoc
const $WorkoutSettings = _$WorkoutSettingsTearOff();

/// @nodoc
mixin _$WorkoutSettings {
  Map<Timeframe, int> get sessionGoals => throw _privateConstructorUsedError;
  Unit get unit => throw _privateConstructorUsedError;
  List<ReminderTimeslot> get slotChoices => throw _privateConstructorUsedError;
  List<Reminder> get reminders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutSettingsCopyWith<WorkoutSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSettingsCopyWith<$Res> {
  factory $WorkoutSettingsCopyWith(
          WorkoutSettings value, $Res Function(WorkoutSettings) then) =
      _$WorkoutSettingsCopyWithImpl<$Res>;
  $Res call(
      {Map<Timeframe, int> sessionGoals,
      Unit unit,
      List<ReminderTimeslot> slotChoices,
      List<Reminder> reminders});
}

/// @nodoc
class _$WorkoutSettingsCopyWithImpl<$Res>
    implements $WorkoutSettingsCopyWith<$Res> {
  _$WorkoutSettingsCopyWithImpl(this._value, this._then);

  final WorkoutSettings _value;
  // ignore: unused_field
  final $Res Function(WorkoutSettings) _then;

  @override
  $Res call({
    Object? sessionGoals = freezed,
    Object? unit = freezed,
    Object? slotChoices = freezed,
    Object? reminders = freezed,
  }) {
    return _then(_value.copyWith(
      sessionGoals: sessionGoals == freezed
          ? _value.sessionGoals
          : sessionGoals // ignore: cast_nullable_to_non_nullable
              as Map<Timeframe, int>,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      slotChoices: slotChoices == freezed
          ? _value.slotChoices
          : slotChoices // ignore: cast_nullable_to_non_nullable
              as List<ReminderTimeslot>,
      reminders: reminders == freezed
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutSettingsCopyWith<$Res>
    implements $WorkoutSettingsCopyWith<$Res> {
  factory _$WorkoutSettingsCopyWith(
          _WorkoutSettings value, $Res Function(_WorkoutSettings) then) =
      __$WorkoutSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<Timeframe, int> sessionGoals,
      Unit unit,
      List<ReminderTimeslot> slotChoices,
      List<Reminder> reminders});
}

/// @nodoc
class __$WorkoutSettingsCopyWithImpl<$Res>
    extends _$WorkoutSettingsCopyWithImpl<$Res>
    implements _$WorkoutSettingsCopyWith<$Res> {
  __$WorkoutSettingsCopyWithImpl(
      _WorkoutSettings _value, $Res Function(_WorkoutSettings) _then)
      : super(_value, (v) => _then(v as _WorkoutSettings));

  @override
  _WorkoutSettings get _value => super._value as _WorkoutSettings;

  @override
  $Res call({
    Object? sessionGoals = freezed,
    Object? unit = freezed,
    Object? slotChoices = freezed,
    Object? reminders = freezed,
  }) {
    return _then(_WorkoutSettings(
      sessionGoals: sessionGoals == freezed
          ? _value.sessionGoals
          : sessionGoals // ignore: cast_nullable_to_non_nullable
              as Map<Timeframe, int>,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      slotChoices: slotChoices == freezed
          ? _value.slotChoices
          : slotChoices // ignore: cast_nullable_to_non_nullable
              as List<ReminderTimeslot>,
      reminders: reminders == freezed
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutSettings extends _WorkoutSettings with DiagnosticableTreeMixin {
  const _$_WorkoutSettings(
      {required this.sessionGoals,
      required this.unit,
      required this.slotChoices,
      required this.reminders})
      : super._();

  factory _$_WorkoutSettings.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutSettingsFromJson(json);

  @override
  final Map<Timeframe, int> sessionGoals;
  @override
  final Unit unit;
  @override
  final List<ReminderTimeslot> slotChoices;
  @override
  final List<Reminder> reminders;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutSettings(sessionGoals: $sessionGoals, unit: $unit, slotChoices: $slotChoices, reminders: $reminders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutSettings'))
      ..add(DiagnosticsProperty('sessionGoals', sessionGoals))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('slotChoices', slotChoices))
      ..add(DiagnosticsProperty('reminders', reminders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutSettings &&
            (identical(other.sessionGoals, sessionGoals) ||
                const DeepCollectionEquality()
                    .equals(other.sessionGoals, sessionGoals)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.slotChoices, slotChoices) ||
                const DeepCollectionEquality()
                    .equals(other.slotChoices, slotChoices)) &&
            (identical(other.reminders, reminders) ||
                const DeepCollectionEquality()
                    .equals(other.reminders, reminders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sessionGoals) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(slotChoices) ^
      const DeepCollectionEquality().hash(reminders);

  @JsonKey(ignore: true)
  @override
  _$WorkoutSettingsCopyWith<_WorkoutSettings> get copyWith =>
      __$WorkoutSettingsCopyWithImpl<_WorkoutSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutSettingsToJson(this);
  }
}

abstract class _WorkoutSettings extends WorkoutSettings {
  const factory _WorkoutSettings(
      {required Map<Timeframe, int> sessionGoals,
      required Unit unit,
      required List<ReminderTimeslot> slotChoices,
      required List<Reminder> reminders}) = _$_WorkoutSettings;
  const _WorkoutSettings._() : super._();

  factory _WorkoutSettings.fromJson(Map<String, dynamic> json) =
      _$_WorkoutSettings.fromJson;

  @override
  Map<Timeframe, int> get sessionGoals => throw _privateConstructorUsedError;
  @override
  Unit get unit => throw _privateConstructorUsedError;
  @override
  List<ReminderTimeslot> get slotChoices => throw _privateConstructorUsedError;
  @override
  List<Reminder> get reminders => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutSettingsCopyWith<_WorkoutSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
