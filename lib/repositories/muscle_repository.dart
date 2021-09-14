import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/models/muscle/muscle.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/extensions.dart';

abstract class MuscleRepositoryBase {
  Future<List<Muscle>> retrieve({required String userId});
  Future<String> create({required String userId, required Muscle muscle});
  Future<void> update({required String userId, required Muscle muscle});
  Future<void> delete({required String userId, required String muscleId});
}

final muscleRepositoryProvider = Provider<MuscleRepository>((ref) {
  return MuscleRepository(ref.read);
});

class MuscleRepository implements MuscleRepositoryBase {
  final Reader _read;

  const MuscleRepository(this._read);

  @override
  Future<List<Muscle>> retrieve({required String userId}) async {
    try {
      final snap = await _read(firebaseFirestoreProvider).muscleRef().get();
      return snap.docs.map((doc) => Muscle.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve ExcerciseTags: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse ExcerciseTags: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required String userId, required Muscle muscle}) async {
    try {
      final docRef = await _read(firebaseFirestoreProvider).muscleRef().add(muscle.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create ExcerciseTag: ${e.message}");
    }
  }

  @override
  Future<void> update({required String userId, required Muscle muscle}) async {
    try {
      await _read(firebaseFirestoreProvider).muscleRef().doc(muscle.id).update(muscle.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update ExcerciseTag: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String userId, required String muscleId}) async {
    try {
      await _read(firebaseFirestoreProvider).muscleRef().doc(muscleId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete ExcerciseTag: ${e.message}");
    }
  }
}
