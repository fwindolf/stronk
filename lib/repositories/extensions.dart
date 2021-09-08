import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference exerciseRef(String userId) {
    return collection('exercises').doc(userId).collection("user_exercises");
  }

  CollectionReference exercisePresetsRef() {
    return collection('preset_exercises');
  }

  CollectionReference workoutRef(String userId) {
    return collection('workouts').doc(userId).collection("user_workouts");
  }
}
