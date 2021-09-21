import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/models/muscle/muscle.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/extensions.dart';

abstract class MuscleRepositoryBase {
  Future<List<Muscle>> retrieve();
  Future<String> create({required Muscle muscle});
  Future<void> update({required Muscle muscle});
  Future<void> delete({required String muscleId});
}

final muscleRepositoryProvider = Provider<MuscleRepository>((ref) {
  return MuscleRepository(ref.read);
});

class MuscleRepository implements MuscleRepositoryBase {
  final Reader _read;

  const MuscleRepository(this._read);

  @override
  Future<List<Muscle>> retrieve() async {
    try {
      final snap = await _read(firebaseFirestoreProvider).muscleRef().get();
      return snap.docs.map((doc) => Muscle.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Muscles: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse Muscles: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required Muscle muscle}) async {
    try {
      final docRef = await _read(firebaseFirestoreProvider).muscleRef().add(muscle.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create Muscle: ${e.message}");
    }
  }

  @override
  Future<void> update({required Muscle muscle}) async {
    try {
      await _read(firebaseFirestoreProvider).muscleRef().doc(muscle.id).update(muscle.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update Muscle: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String muscleId}) async {
    try {
      await _read(firebaseFirestoreProvider).muscleRef().doc(muscleId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete Muscle: ${e.message}");
    }
  }
}
