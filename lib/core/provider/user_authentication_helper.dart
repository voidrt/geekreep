import 'package:firebase_auth/firebase_auth.dart';

class AuthHelper {
  final FirebaseAuth _firebaseInstance = FirebaseAuth.instance;

  User? get currentUser => _firebaseInstance.currentUser;

  Stream<User?> get authStateChanges => _firebaseInstance.authStateChanges();

  Future<void> signInWithEmail({required email, required password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> createUserWithEmail({
    required String email,
    required String password,
  }) async {
    await _firebaseInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _firebaseInstance.signOut();
  }
}
