import 'package:cloud_firestore/cloud_firestore.dart' hide Settings;
import 'package:riverpod/riverpod.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/models/settings/settings.dart';

import 'package:stronk/repositories/extensions.dart';
import 'package:stronk/repositories/exception.dart';

abstract class SettingsRepositoryBase {
  Future<Settings> retrieve({required String userId});
  Future<String> create({required String userId, required Settings settings});
  Future<void> update({required String userId, required Settings settings});
  Future<void> delete({required String userId, required String settingsId});
}

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepository(ref.read);
});

class SettingsRepository implements SettingsRepositoryBase {
  final Reader _read;

  const SettingsRepository(this._read);

  @override
  Future<Settings> retrieve({required String userId}) async {
    try {
      final snapshot = await _read(firebaseFirestoreProvider).settingsRef(userId).get();
      if (snapshot.docs.length > 1) throw Exception("Conflicting settings found.");
      
      var doc = null;
      if (snapshot.docs.length == 0) {
        final settingsId = await this.create(userId: userId, settings: Settings.empty());
        doc = await _read(firebaseFirestoreProvider).settingsRef(userId).doc(settingsId).get();
      } else {
        doc = snapshot.docs[0];
      }
      return Settings.fromDocument(doc!);
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Settings: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse Settings: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required String userId, required Settings settings}) async {
    try {
      final docRef =
          await _read(firebaseFirestoreProvider).settingsRef(userId).add(settings.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create Settings: ${e.message}");
    }
  }

  @override
  Future<void> update({required String userId, required Settings settings}) async {
    try {
      await _read(firebaseFirestoreProvider)
          .settingsRef(userId)
          .doc(settings.id)
          .update(settings.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update Settings: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String userId, required String settingsId}) async {
    try {
      await _read(firebaseFirestoreProvider).settingsRef(userId).doc(settingsId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete Settings: ${e.message}");
    }
  }
}
