import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:moodcast/Core/Functions/my_exeptions.dart';

class FirebaseAuthServices {
  // FirebaseAuth instance
  Future<User> createWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw MyExeption('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw MyExeption('The account already exists for that email.');
      }
      log(e.toString());
      throw MyExeption("$e = There was an error creating the account");
    } catch (e) {
      log('Error: $e');
      throw MyExeption("There was an error creating the account");
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw MyExeption('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw MyExeption('Wrong password provided for that user.');
      }
      throw MyExeption('Authentication failed: ${e.message}');
    } catch (e) {
      throw MyExeption('An unknown error occurred: $e');
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
