import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
