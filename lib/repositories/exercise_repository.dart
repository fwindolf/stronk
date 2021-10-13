import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/models/exercise/exercise.dart';

import 'package:stronk/repositories/extensions.dart';
import 'package:stronk/repositories/exception.dart';

abstract class ExerciseRepositoryBase {
  Future<List<Exercise>> retrieve({required String userId});
  Future<String> create({required String userId, required Exercise exercise});
  Future<void> update({required String userId, required Exercise exercise});
  Future<void> delete({required String userId, required String exerciseId});
}

final exerciseRepositoryProvider = Provider<ExerciseRepository>((ref) {
  return ExerciseRepository(ref.read);
});

class ExerciseRepository implements ExerciseRepositoryBase {
  final Reader _read;

  const ExerciseRepository(this._read);

  @override
  Future<List<Exercise>> retrieve({required String userId}) async {
    try {
      final snap_user = await _read(firebaseFirestoreProvider).exerciseRef(userId).get();
      final snap_presets = await _read(firebaseFirestoreProvider).exercisePresetsRef().get();
      final combined_docs = snap_user.docs + snap_presets.docs;

      return combined_docs.map((doc) => Exercise.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Excercises: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse Excercises: ${e.toString()}");
    }
  }

  @override
  Future<String> create({
    required String userId,
    required Exercise exercise,
  }) async {
    try {
      await _read(firebaseFirestoreProvider)
          .exerciseRef(userId)
          .doc(exercise.id)
          .set(exercise.toDocument());
      return exercise.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create Excercise: ${e.message}");
    }
  }

  @override
  Future<void> update({
    required String userId,
    required Exercise exercise,
  }) async {
    try {
      await _read(firebaseFirestoreProvider)
          .exerciseRef(userId)
          .doc(exercise.id)
          .update(exercise.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update Excercise: ${e.message}");
    }
  }

  @override
  Future<void> delete({
    required String userId,
    required String exerciseId,
  }) async {
    try {
      await _read(firebaseFirestoreProvider).exerciseRef(userId).doc(exerciseId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete Excercise: ${e.message}");
    }
  }
}
