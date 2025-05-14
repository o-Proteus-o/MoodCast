abstract class AuthRepo {
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<void> signOut();
}
