import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/models/tag.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/extensions.dart';
import 'package:stronk/repositories/tag_repository.dart';

abstract class MuscleRepositoryBase implements TagRepositoryBase {
  @override
  Future<List<TagBase>> retrieve({required String userId});
  Future<String> create({required String userId, required TagBase tag});
  Future<void> update({required String userId, required TagBase tag});
  Future<void> delete({required String userId, required String tagId});
}

final muscleRepositoryProvider = Provider<MuscleRepository>((ref) {
  return MuscleRepository(ref.read);
});

class MuscleRepository implements MuscleRepositoryBase {
  final Reader _read;

  const MuscleRepository(this._read);

  @override
  Future<List<TagBase>> retrieve({required String userId}) async {
    try {
      final snap = await _read(firebaseFirestoreProvider).muscleRef().get();
      return snap.docs.map((doc) => (Muscle.fromDocument(doc) as TagBase)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve ExcerciseTags: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse ExcerciseTags: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required String userId, required TagBase tag}) async {
    try {
      final _tag = tag as Muscle;
      final docRef = await _read(firebaseFirestoreProvider).muscleRef().add(_tag.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create ExcerciseTag: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String userId, required String tagId}) async {
    try {
      await _read(firebaseFirestoreProvider).muscleRef().doc(tagId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete ExcerciseTag: ${e.message}");
    }
  }

  @override
  Future<void> update({required String userId, required TagBase tag}) async {
    try {
      final _tag = tag as Muscle;
      await _read(firebaseFirestoreProvider).muscleRef().doc(_tag.id).update(_tag.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update ExcerciseTag: ${e.message}");
    }
  }
}
