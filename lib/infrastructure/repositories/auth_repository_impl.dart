import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/firebase_auth_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthSource firebaseAuthSource;

  AuthRepositoryImpl(this.firebaseAuthSource);

  @override
  Future<User> signIn(String email, String password) async {
    return await firebaseAuthSource.signIn(email, password);
  }

  @override
  Future<User> signUp(String email, String password) async {
    return await firebaseAuthSource.signUp(email, password);
  }

  @override
  Future<void> signOut() async {
    await firebaseAuthSource.signOut();
  }

  @override
  Future<User?> getCurrentUser() async {
    return await firebaseAuthSource.getCurrentUser();
  }
}