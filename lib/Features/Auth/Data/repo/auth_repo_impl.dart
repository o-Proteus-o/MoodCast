import 'package:dartz/dartz.dart';
import 'package:moodcast/Core/Errors/failures.dart';
import 'package:moodcast/Core/Functions/my_exeptions.dart';
import 'package:moodcast/Core/Services/firebase_auth_services.dart';
import 'package:moodcast/Features/Auth/Data/Models/user_model.dart';
import 'package:moodcast/Features/Auth/Domain/entities/user_entity.dart';
import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntitny>> signUpWithEmailAndPassword(
    String name,
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthServices.createWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(UserModel.fromFirebaseUser(user));
    } on MyExeption catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      return left(ServerFailure("There was an error signing in"));
    }
  }

  @override
  Future<Either<Failure, UserEntitny>> signInWithEmailAndPassword(
    String email,
    String password,
  ) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
