// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReminderTimeslot _$ReminderTimeslotFromJson(Map<String, dynamic> json) {
  return _RequiredTimeslot.fromJson(json);
}

/// @nodoc
class _$ReminderTimeslotTearOff {
  const _$ReminderTimeslotTearOff();

  _RequiredTimeslot call({String? id, required int hourOfDay}) {
    return _RequiredTimeslot(
      id: id,
      hourOfDay: hourOfDay,
    );
  }

  ReminderTimeslot fromJson(Map<String, Object> json) {
    return ReminderTimeslot.fromJson(json);
  }
}

/// @nodoc
const $ReminderTimeslot = _$ReminderTimeslotTearOff();

/// @nodoc
mixin _$ReminderTimeslot {
  String? get id => throw _privateConstructorUsedError;
  int get hourOfDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReminderTimeslotCopyWith<ReminderTimeslot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderTimeslotCopyWith<$Res> {
  factory $ReminderTimeslotCopyWith(
          ReminderTimeslot value, $Res Function(ReminderTimeslot) then) =
      _$ReminderTimeslotCopyWithImpl<$Res>;
  $Res call({String? id, int hourOfDay});
}

/// @nodoc
class _$ReminderTimeslotCopyWithImpl<$Res>
    implements $ReminderTimeslotCopyWith<$Res> {
  _$ReminderTimeslotCopyWithImpl(this._value, this._then);

  final ReminderTimeslot _value;
  // ignore: unused_field
  final $Res Function(ReminderTimeslot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? hourOfDay = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hourOfDay: hourOfDay == freezed
          ? _value.hourOfDay
          : hourOfDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RequiredTimeslotCopyWith<$Res>
    implements $ReminderTimeslotCopyWith<$Res> {
  factory _$RequiredTimeslotCopyWith(
          _RequiredTimeslot value, $Res Function(_RequiredTimeslot) then) =
      __$RequiredTimeslotCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int hourOfDay});
}

/// @nodoc
class __$RequiredTimeslotCopyWithImpl<$Res>
    extends _$ReminderTimeslotCopyWithImpl<$Res>
    implements _$RequiredTimeslotCopyWith<$Res> {
  __$RequiredTimeslotCopyWithImpl(
      _RequiredTimeslot _value, $Res Function(_RequiredTimeslot) _then)
      : super(_value, (v) => _then(v as _RequiredTimeslot));

  @override
  _RequiredTimeslot get _value => super._value as _RequiredTimeslot;

  @override
  $Res call({
    Object? id = freezed,
    Object? hourOfDay = freezed,
  }) {
    return _then(_RequiredTimeslot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hourOfDay: hourOfDay == freezed
          ? _value.hourOfDay
          : hourOfDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequiredTimeslot extends _RequiredTimeslot
    with DiagnosticableTreeMixin {
  const _$_RequiredTimeslot({this.id, required this.hourOfDay}) : super._();

  factory _$_RequiredTimeslot.fromJson(Map<String, dynamic> json) =>
      _$$_RequiredTimeslotFromJson(json);

  @override
  final String? id;
  @override
  final int hourOfDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReminderTimeslot(id: $id, hourOfDay: $hourOfDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReminderTimeslot'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('hourOfDay', hourOfDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequiredTimeslot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.hourOfDay, hourOfDay) ||
                const DeepCollectionEquality()
                    .equals(other.hourOfDay, hourOfDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(hourOfDay);

  @JsonKey(ignore: true)
  @override
  _$RequiredTimeslotCopyWith<_RequiredTimeslot> get copyWith =>
      __$RequiredTimeslotCopyWithImpl<_RequiredTimeslot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequiredTimeslotToJson(this);
  }
}

abstract class _RequiredTimeslot extends ReminderTimeslot {
  const factory _RequiredTimeslot({String? id, required int hourOfDay}) =
      _$_RequiredTimeslot;
  const _RequiredTimeslot._() : super._();

  factory _RequiredTimeslot.fromJson(Map<String, dynamic> json) =
      _$_RequiredTimeslot.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get hourOfDay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequiredTimeslotCopyWith<_RequiredTimeslot> get copyWith =>
      throw _privateConstructorUsedError;
}

Reminder _$ReminderFromJson(Map<String, dynamic> json) {
  return _Reminder.fromJson(json);
}

/// @nodoc
class _$ReminderTearOff {
  const _$ReminderTearOff();

  _Reminder call(
      {String? id,
      required ReminderTimeframe timeframe,
      required List<ReminderTimeslot> selectedSlots,
      bool continuouslyRemind = false,
      bool snoozeAllowed = true,
      int snoozeMinutes = 30}) {
    return _Reminder(
      id: id,
      timeframe: timeframe,
      selectedSlots: selectedSlots,
      continuouslyRemind: continuouslyRemind,
      snoozeAllowed: snoozeAllowed,
      snoozeMinutes: snoozeMinutes,
    );
  }

  Reminder fromJson(Map<String, Object> json) {
    return Reminder.fromJson(json);
  }
}

/// @nodoc
const $Reminder = _$ReminderTearOff();

/// @nodoc
mixin _$Reminder {
  String? get id => throw _privateConstructorUsedError;
  ReminderTimeframe get timeframe => throw _privateConstructorUsedError;
  List<ReminderTimeslot> get selectedSlots =>
      throw _privateConstructorUsedError;
  bool get continuouslyRemind => throw _privateConstructorUsedError;
  bool get snoozeAllowed => throw _privateConstructorUsedError;
  int get snoozeMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReminderCopyWith<Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCopyWith<$Res> {
  factory $ReminderCopyWith(Reminder value, $Res Function(Reminder) then) =
      _$ReminderCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ReminderTimeframe timeframe,
      List<ReminderTimeslot> selectedSlots,
      bool continuouslyRemind,
      bool snoozeAllowed,
      int snoozeMinutes});
}

/// @nodoc
class _$ReminderCopyWithImpl<$Res> implements $ReminderCopyWith<$Res> {
  _$ReminderCopyWithImpl(this._value, this._then);

  final Reminder _value;
  // ignore: unused_field
  final $Res Function(Reminder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? timeframe = freezed,
    Object? selectedSlots = freezed,
    Object? continuouslyRemind = freezed,
    Object? snoozeAllowed = freezed,
    Object? snoozeMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeframe: timeframe == freezed
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as ReminderTimeframe,
      selectedSlots: selectedSlots == freezed
          ? _value.selectedSlots
          : selectedSlots // ignore: cast_nullable_to_non_nullable
              as List<ReminderTimeslot>,
      continuouslyRemind: continuouslyRemind == freezed
          ? _value.continuouslyRemind
          : continuouslyRemind // ignore: cast_nullable_to_non_nullable
              as bool,
      snoozeAllowed: snoozeAllowed == freezed
          ? _value.snoozeAllowed
          : snoozeAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      snoozeMinutes: snoozeMinutes == freezed
          ? _value.snoozeMinutes
          : snoozeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ReminderCopyWith<$Res> implements $ReminderCopyWith<$Res> {
  factory _$ReminderCopyWith(_Reminder value, $Res Function(_Reminder) then) =
      __$ReminderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ReminderTimeframe timeframe,
      List<ReminderTimeslot> selectedSlots,
      bool continuouslyRemind,
      bool snoozeAllowed,
      int snoozeMinutes});
}

/// @nodoc
class __$ReminderCopyWithImpl<$Res> extends _$ReminderCopyWithImpl<$Res>
    implements _$ReminderCopyWith<$Res> {
  __$ReminderCopyWithImpl(_Reminder _value, $Res Function(_Reminder) _then)
      : super(_value, (v) => _then(v as _Reminder));

  @override
  _Reminder get _value => super._value as _Reminder;

  @override
  $Res call({
    Object? id = freezed,
    Object? timeframe = freezed,
    Object? selectedSlots = freezed,
    Object? continuouslyRemind = freezed,
    Object? snoozeAllowed = freezed,
    Object? snoozeMinutes = freezed,
  }) {
    return _then(_Reminder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeframe: timeframe == freezed
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as ReminderTimeframe,
      selectedSlots: selectedSlots == freezed
          ? _value.selectedSlots
          : selectedSlots // ignore: cast_nullable_to_non_nullable
              as List<ReminderTimeslot>,
      continuouslyRemind: continuouslyRemind == freezed
          ? _value.continuouslyRemind
          : continuouslyRemind // ignore: cast_nullable_to_non_nullable
              as bool,
      snoozeAllowed: snoozeAllowed == freezed
          ? _value.snoozeAllowed
          : snoozeAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      snoozeMinutes: snoozeMinutes == freezed
          ? _value.snoozeMinutes
          : snoozeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reminder extends _Reminder with DiagnosticableTreeMixin {
  const _$_Reminder(
      {this.id,
      required this.timeframe,
      required this.selectedSlots,
      this.continuouslyRemind = false,
      this.snoozeAllowed = true,
      this.snoozeMinutes = 30})
      : super._();

  factory _$_Reminder.fromJson(Map<String, dynamic> json) =>
      _$$_ReminderFromJson(json);

  @override
  final String? id;
  @override
  final ReminderTimeframe timeframe;
  @override
  final List<ReminderTimeslot> selectedSlots;
  @JsonKey(defaultValue: false)
  @override
  final bool continuouslyRemind;
  @JsonKey(defaultValue: true)
  @override
  final bool snoozeAllowed;
  @JsonKey(defaultValue: 30)
  @override
  final int snoozeMinutes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reminder(id: $id, timeframe: $timeframe, selectedSlots: $selectedSlots, continuouslyRemind: $continuouslyRemind, snoozeAllowed: $snoozeAllowed, snoozeMinutes: $snoozeMinutes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reminder'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('timeframe', timeframe))
      ..add(DiagnosticsProperty('selectedSlots', selectedSlots))
      ..add(DiagnosticsProperty('continuouslyRemind', continuouslyRemind))
      ..add(DiagnosticsProperty('snoozeAllowed', snoozeAllowed))
      ..add(DiagnosticsProperty('snoozeMinutes', snoozeMinutes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reminder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timeframe, timeframe) ||
                const DeepCollectionEquality()
                    .equals(other.timeframe, timeframe)) &&
            (identical(other.selectedSlots, selectedSlots) ||
                const DeepCollectionEquality()
                    .equals(other.selectedSlots, selectedSlots)) &&
            (identical(other.continuouslyRemind, continuouslyRemind) ||
                const DeepCollectionEquality()
                    .equals(other.continuouslyRemind, continuouslyRemind)) &&
            (identical(other.snoozeAllowed, snoozeAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.snoozeAllowed, snoozeAllowed)) &&
            (identical(other.snoozeMinutes, snoozeMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.snoozeMinutes, snoozeMinutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timeframe) ^
      const DeepCollectionEquality().hash(selectedSlots) ^
      const DeepCollectionEquality().hash(continuouslyRemind) ^
      const DeepCollectionEquality().hash(snoozeAllowed) ^
      const DeepCollectionEquality().hash(snoozeMinutes);

  @JsonKey(ignore: true)
  @override
  _$ReminderCopyWith<_Reminder> get copyWith =>
      __$ReminderCopyWithImpl<_Reminder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReminderToJson(this);
  }
}

abstract class _Reminder extends Reminder {
  const factory _Reminder(
      {String? id,
      required ReminderTimeframe timeframe,
      required List<ReminderTimeslot> selectedSlots,
      bool continuouslyRemind,
      bool snoozeAllowed,
      int snoozeMinutes}) = _$_Reminder;
  const _Reminder._() : super._();

  factory _Reminder.fromJson(Map<String, dynamic> json) = _$_Reminder.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ReminderTimeframe get timeframe => throw _privateConstructorUsedError;
  @override
  List<ReminderTimeslot> get selectedSlots =>
      throw _privateConstructorUsedError;
  @override
  bool get continuouslyRemind => throw _privateConstructorUsedError;
  @override
  bool get snoozeAllowed => throw _privateConstructorUsedError;
  @override
  int get snoozeMinutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReminderCopyWith<_Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}
