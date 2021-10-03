import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

import 'package:stronk/providers.dart';

import 'package:stronk/models/challenge/challenge.dart';

import 'package:stronk/repositories/extensions.dart';
import 'package:stronk/repositories/exception.dart';

abstract class ChallengeRepositoryBase {
  Future<List<Challenge>> retrieve({required String userId});
  Future<Challenge> get({required String userId, required String challengeId});
  Future<String> create({required String userId, required Challenge challenge});
  Future<void> update({required String userId, required Challenge challenge});
  Future<void> delete({required String userId, required String challengeId});
}

final challengeRepositoryProvider = Provider<ChallengeRepository>((ref) {
  return ChallengeRepository(ref.read);
});

class ChallengeRepository implements ChallengeRepositoryBase {
  final Reader _read;

  const ChallengeRepository(this._read);

  @override
  Future<List<Challenge>> retrieve({required String userId}) async {
    try {
      final snapshot = await _read(firebaseFirestoreProvider).challengeRef(userId).get();

      return snapshot.docs.map((doc) => Challenge.fromDocument(doc)).toList();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Excercises: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse Excercises: ${e.toString()}");
    }
  }

  @override
  Future<Challenge> get({required String userId, required String challengeId}) async {
    try {
      final doc = await _read(firebaseFirestoreProvider).challengeRef(userId).doc(challengeId).get();
      return Challenge.fromDocument(doc);
    }on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to retrieve Challenge: ${e.message}");
    } catch (e) {
      throw DataTransferException(message: "Failed to parse Challenge: ${e.toString()}");
    }
  }

  @override
  Future<String> create({required String userId, required Challenge challenge}) async {
    try {
      final docRef =
          await _read(firebaseFirestoreProvider).challengeRef(userId).add(challenge.toDocument());
      return docRef.id;
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to create Excercise: ${e.message}");
    }
  }

  @override
  Future<void> update({required String userId, required Challenge challenge}) async {
    try {
      await _read(firebaseFirestoreProvider)
          .challengeRef(userId)
          .doc(challenge.id)
          .update(challenge.toDocument());
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to update Excercise: ${e.message}");
    }
  }

  @override
  Future<void> delete({required String userId, required String challengeId}) async {
    try {
      await _read(firebaseFirestoreProvider).challengeRef(userId).doc(challengeId).delete();
    } on FirebaseException catch (e) {
      throw DataTransferException(message: "Failed to delete Excercise: ${e.message}");
    }
  }
}
