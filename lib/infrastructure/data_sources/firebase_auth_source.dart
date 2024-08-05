import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import '../../domain/entities/user.dart';

class FirebaseAuthSource {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  FirebaseAuthSource(this._firebaseAuth);

  Future<User> signIn(String email, String password) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(userCredential.user!);
  }

  Future<User> signUp(String email, String password) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(userCredential.user!);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<User?> getCurrentUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    return firebaseUser != null ? _userFromFirebase(firebaseUser) : null;
  }

  User _userFromFirebase(firebase_auth.User firebaseUser) {
    return User(
      id: firebaseUser.uid,
      email: firebaseUser.email!,
    );
  }
}
