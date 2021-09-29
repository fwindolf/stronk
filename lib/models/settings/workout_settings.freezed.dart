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

SessionGoal _$SessionGoalFromJson(Map<String, dynamic> json) {
  return _SessionGoal.fromJson(json);
}

/// @nodoc
class _$SessionGoalTearOff {
  const _$SessionGoalTearOff();

  _SessionGoal call({required Timeframe timeframe, required int count}) {
    return _SessionGoal(
      timeframe: timeframe,
      count: count,
    );
  }

  SessionGoal fromJson(Map<String, Object> json) {
    return SessionGoal.fromJson(json);
  }
}

/// @nodoc
const $SessionGoal = _$SessionGoalTearOff();

/// @nodoc
mixin _$SessionGoal {
  Timeframe get timeframe => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionGoalCopyWith<SessionGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionGoalCopyWith<$Res> {
  factory $SessionGoalCopyWith(
          SessionGoal value, $Res Function(SessionGoal) then) =
      _$SessionGoalCopyWithImpl<$Res>;
  $Res call({Timeframe timeframe, int count});
}

/// @nodoc
class _$SessionGoalCopyWithImpl<$Res> implements $SessionGoalCopyWith<$Res> {
  _$SessionGoalCopyWithImpl(this._value, this._then);

  final SessionGoal _value;
  // ignore: unused_field
  final $Res Function(SessionGoal) _then;

  @override
  $Res call({
    Object? timeframe = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      timeframe: timeframe == freezed
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as Timeframe,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SessionGoalCopyWith<$Res>
    implements $SessionGoalCopyWith<$Res> {
  factory _$SessionGoalCopyWith(
          _SessionGoal value, $Res Function(_SessionGoal) then) =
      __$SessionGoalCopyWithImpl<$Res>;
  @override
  $Res call({Timeframe timeframe, int count});
}

/// @nodoc
class __$SessionGoalCopyWithImpl<$Res> extends _$SessionGoalCopyWithImpl<$Res>
    implements _$SessionGoalCopyWith<$Res> {
  __$SessionGoalCopyWithImpl(
      _SessionGoal _value, $Res Function(_SessionGoal) _then)
      : super(_value, (v) => _then(v as _SessionGoal));

  @override
  _SessionGoal get _value => super._value as _SessionGoal;

  @override
  $Res call({
    Object? timeframe = freezed,
    Object? count = freezed,
  }) {
    return _then(_SessionGoal(
      timeframe: timeframe == freezed
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as Timeframe,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionGoal extends _SessionGoal with DiagnosticableTreeMixin {
  const _$_SessionGoal({required this.timeframe, required this.count})
      : super._();

  factory _$_SessionGoal.fromJson(Map<String, dynamic> json) =>
      _$$_SessionGoalFromJson(json);

  @override
  final Timeframe timeframe;
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionGoal(timeframe: $timeframe, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionGoal'))
      ..add(DiagnosticsProperty('timeframe', timeframe))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionGoal &&
            (identical(other.timeframe, timeframe) ||
                const DeepCollectionEquality()
                    .equals(other.timeframe, timeframe)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timeframe) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$SessionGoalCopyWith<_SessionGoal> get copyWith =>
      __$SessionGoalCopyWithImpl<_SessionGoal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionGoalToJson(this);
  }
}

abstract class _SessionGoal extends SessionGoal {
  const factory _SessionGoal(
      {required Timeframe timeframe, required int count}) = _$_SessionGoal;
  const _SessionGoal._() : super._();

  factory _SessionGoal.fromJson(Map<String, dynamic> json) =
      _$_SessionGoal.fromJson;

  @override
  Timeframe get timeframe => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionGoalCopyWith<_SessionGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutSettings _$WorkoutSettingsFromJson(Map<String, dynamic> json) {
  return _WorkoutSettings.fromJson(json);
}

/// @nodoc
class _$WorkoutSettingsTearOff {
  const _$WorkoutSettingsTearOff();

  _WorkoutSettings call(
      {required Unit unit,
      SessionGoal? sessionGoal,
      required List<ReminderTimeslot> slotChoices,
      required List<Reminder> reminders}) {
    return _WorkoutSettings(
      unit: unit,
      sessionGoal: sessionGoal,
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
  Unit get unit => throw _privateConstructorUsedError;
  SessionGoal? get sessionGoal => throw _privateConstructorUsedError;
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
      {Unit unit,
      SessionGoal? sessionGoal,
      List<ReminderTimeslot> slotChoices,
      List<Reminder> reminders});

  $SessionGoalCopyWith<$Res>? get sessionGoal;
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
    Object? unit = freezed,
    Object? sessionGoal = freezed,
    Object? slotChoices = freezed,
    Object? reminders = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      sessionGoal: sessionGoal == freezed
          ? _value.sessionGoal
          : sessionGoal // ignore: cast_nullable_to_non_nullable
              as SessionGoal?,
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

  @override
  $SessionGoalCopyWith<$Res>? get sessionGoal {
    if (_value.sessionGoal == null) {
      return null;
    }

    return $SessionGoalCopyWith<$Res>(_value.sessionGoal!, (value) {
      return _then(_value.copyWith(sessionGoal: value));
    });
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
      {Unit unit,
      SessionGoal? sessionGoal,
      List<ReminderTimeslot> slotChoices,
      List<Reminder> reminders});

  @override
  $SessionGoalCopyWith<$Res>? get sessionGoal;
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
    Object? unit = freezed,
    Object? sessionGoal = freezed,
    Object? slotChoices = freezed,
    Object? reminders = freezed,
  }) {
    return _then(_WorkoutSettings(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      sessionGoal: sessionGoal == freezed
          ? _value.sessionGoal
          : sessionGoal // ignore: cast_nullable_to_non_nullable
              as SessionGoal?,
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
      {required this.unit,
      this.sessionGoal,
      required this.slotChoices,
      required this.reminders})
      : super._();

  factory _$_WorkoutSettings.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutSettingsFromJson(json);

  @override
  final Unit unit;
  @override
  final SessionGoal? sessionGoal;
  @override
  final List<ReminderTimeslot> slotChoices;
  @override
  final List<Reminder> reminders;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutSettings(unit: $unit, sessionGoal: $sessionGoal, slotChoices: $slotChoices, reminders: $reminders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutSettings'))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('sessionGoal', sessionGoal))
      ..add(DiagnosticsProperty('slotChoices', slotChoices))
      ..add(DiagnosticsProperty('reminders', reminders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutSettings &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.sessionGoal, sessionGoal) ||
                const DeepCollectionEquality()
                    .equals(other.sessionGoal, sessionGoal)) &&
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
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(sessionGoal) ^
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
      {required Unit unit,
      SessionGoal? sessionGoal,
      required List<ReminderTimeslot> slotChoices,
      required List<Reminder> reminders}) = _$_WorkoutSettings;
  const _WorkoutSettings._() : super._();

  factory _WorkoutSettings.fromJson(Map<String, dynamic> json) =
      _$_WorkoutSettings.fromJson;

  @override
  Unit get unit => throw _privateConstructorUsedError;
  @override
  SessionGoal? get sessionGoal => throw _privateConstructorUsedError;
  @override
  List<ReminderTimeslot> get slotChoices => throw _privateConstructorUsedError;
  @override
  List<Reminder> get reminders => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutSettingsCopyWith<_WorkoutSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
