import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/models/workout/workout.dart';

import 'package:stronk/repositories/extensions.dart';
import 'package:stronk/repositories/exception.dart';

abstract class WorkoutRepositoryBase {
  Future<List<Workout>> retrieve({required String userId});
  Future<String> create({required String userId, required Workout workout});
  Future<void> update({required String userId, required Workout workout});
  Future<void> delete({required String userId, required String workoutId});
}

final workoutRepositoryProvider = Provider<WorkoutRepository>((ref) {
  return WorkoutRepository(ref.read);
});

class WorkoutRepository implements WorkoutRepositoryBase {
  final Reader _read;

  const WorkoutRepository(this._read);

  @override
  Future<List<Workout>> retrieve({required String userId}) async {
    try {
      final snapshot = await _read(firebaseFirestoreProvider).workoutRef(userId).get();

      return snapshot.docs.map((doc) => Workout.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Workouts: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse Workouts: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required String userId, required Workout workout}) async {
    try {
      final docRef =
          await _read(firebaseFirestoreProvider).workoutRef(userId).add(workout.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create Workout: ${e.message}");
    }
  }

  @override
  Future<void> update({required String userId, required Workout workout}) async {
    try {
      await _read(firebaseFirestoreProvider)
          .workoutRef(userId)
          .doc(workout.id)
          .update(workout.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update Workout: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String userId, required String workoutId}) async {
    try {
      await _read(firebaseFirestoreProvider).workoutRef(userId).doc(workoutId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete Workout: ${e.message}");
    }
  }
}
