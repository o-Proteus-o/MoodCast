import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
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
}
