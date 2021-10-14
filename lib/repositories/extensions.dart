import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference exerciseRef(String userId) {
    return collection('exercises').doc(userId).collection('user_exercises');
  }

  CollectionReference exercisePresetsRef() {
    return collection('exercises').doc("preset").collection('user_exercises');
  }

  CollectionReference exerciseTagRef(String userId) {
    return collection('exercise_tags').doc(userId).collection('tags');
  }

  CollectionReference muscleRef() {
    return collection('muscles');
  }

  CollectionReference workoutRef(String userId) {
    return collection('workouts').doc(userId).collection('user_workouts');
  }

  CollectionReference challengeRef(String userId) {
    return collection('challenges').doc(userId).collection('user_challenges');
  }

  CollectionReference settingsRef(String userId) {
    return collection('settings').doc(userId).collection('settings');
  }
}
