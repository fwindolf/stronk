import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/models/exercise/exercise_tag.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/extensions.dart';

abstract class ExerciseTagRepositoryBase {
  @override
  Future<List<ExerciseTag>> retrieve({required String userId});
  Future<String> create({required String userId, required ExerciseTag tag});
  Future<void> update({required String userId, required ExerciseTag tag});
  Future<void> delete({required String userId, required String tagId});
}

final exerciseTagRepositoryProvider = Provider<ExerciseTagRepository>((ref) {
  return ExerciseTagRepository(ref.read);
});

class ExerciseTagRepository implements ExerciseTagRepositoryBase {
  final Reader _read;

  const ExerciseTagRepository(this._read);

  @override
  Future<List<ExerciseTag>> retrieve({required String userId}) async {
    try {
      final snap = await _read(firebaseFirestoreProvider).exerciseTagRef(userId).get();
      return snap.docs.map((doc) => ExerciseTag.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve ExcerciseTags: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse ExcerciseTags: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required String userId, required ExerciseTag tag}) async {
    try {
      final docRef =
          await _read(firebaseFirestoreProvider).exerciseTagRef(userId).add(tag.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create ExcerciseTag: ${e.message}");
    }
  }

  @override
  Future<void> update({required String userId, required ExerciseTag tag}) async {
    try {
      await _read(firebaseFirestoreProvider)
          .exerciseTagRef(userId)
          .doc(tag.id)
          .update(tag.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update ExcerciseTag: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String userId, required String tagId}) async {
    try {
      await _read(firebaseFirestoreProvider).exerciseTagRef(userId).doc(tagId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete ExcerciseTag: ${e.message}");
    }
  }
}
