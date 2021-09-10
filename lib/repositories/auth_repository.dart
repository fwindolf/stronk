import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/providers.dart';
import 'package:stronk/repositories/exception.dart';

abstract class BaseAuthRepository {
  Stream<User?> get authStateChanges;
  Future<void> signInAnonymously();
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> createWithEmailAndPassword(String email, String password);
  User? getCurrentUser();
  Future<void> signOut();
}

final authRepositoryProvider = Provider<AuthRepository>((ref) => AuthRepository(ref.read));

class AuthRepository implements BaseAuthRepository {
  final Reader _read;

  const AuthRepository(this._read);

  @override
  Stream<User?> get authStateChanges => _read(firebaseAuthProvider).authStateChanges();

  @override
  Future<void> signInAnonymously() async {
    try {
      await _read(firebaseAuthProvider).signInAnonymously();
    } on FirebaseAuthException catch (e) {
      throw AuthenticationException(message: "Failed to sign in: ${e.message}");
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _read(firebaseAuthProvider).signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AuthenticationException(message: "Failed to sign in: ${e.message}");
    }
  }

  @override
  Future<void> createWithEmailAndPassword(String email, String password) async {
    try {
      await _read(firebaseAuthProvider).createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return signInWithEmailAndPassword(email, password);
      }
      throw AuthenticationException(message: "Failed to sign in: ${e.message}");
    }
  }

  @override
  User? getCurrentUser() {
    try {
      return _read(firebaseAuthProvider).currentUser;
    } on FirebaseAuthException catch (e) {
      throw AuthenticationException(message: "Failed to get current user: ${e.message}");
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _read(firebaseAuthProvider).signOut();
      await signInAnonymously();
    } on FirebaseAuthException catch (e) {
      throw AuthenticationException(
        message: "Failed to sign out user: ${e.message}",
        userId: _read(firebaseAuthProvider).currentUser?.uid,
      );
    }
  }
}
