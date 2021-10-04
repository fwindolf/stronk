import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stronk/models/settings/user_settings.dart';
import 'package:stronk/models/settings/workout_settings.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const Settings._();

  const factory Settings({
    String? id,
    required UserSettings userSettings,
    required WorkoutSettings workoutSettings,
  }) = _Settings;

  factory Settings.empty() => Settings(
        userSettings: UserSettings.empty(),
        workoutSettings: WorkoutSettings.empty(),
      );

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  factory Settings.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return Settings.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
