import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/models/exercise/exercise.dart';

import 'package:stronk/repositories/extensions.dart';
import 'package:stronk/repositories/exception.dart';

abstract class BaseExerciseRepository {
  Future<List<Exercise>> retrieveExercise({required String userId});
  Future<String> createExercise({required String userId, required Exercise exercise});
  Future<void> updateExercise({required String userId, required Exercise exercise});
  Future<void> deleteExercise({required String userId, required String exerciseId});
}

final exerciseRepositoryProvider = Provider<ExerciseRepository>((ref) {
  return ExerciseRepository(ref.read);
});

class ExerciseRepository implements BaseExerciseRepository {
  final Reader _read;

  const ExerciseRepository(this._read);

  @override
  Future<List<Exercise>> retrieveExercise({required String userId}) async {
    try {
      final snap = await _read(firebaseFirestoreProvider).exerciseRef(userId).get();
      return snap.docs.map((doc) => Exercise.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Excercises: ${e.message}");
    }
  }

  @override
  Future<String> createExercise({required String userId, required Exercise exercise}) async {
    try {
      final docRef =
          await _read(firebaseFirestoreProvider).exerciseRef(userId).add(exercise.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create Excercise: ${e.message}");
    }
  }

  @override
  Future<void> updateExercise({required String userId, required Exercise exercise}) async {
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
  Future<void> deleteExercise({required String userId, required String exerciseId}) async {
    try {
      await _read(firebaseFirestoreProvider).exerciseRef(userId).doc(exerciseId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete Excercise: ${e.message}");
    }
  }
}
