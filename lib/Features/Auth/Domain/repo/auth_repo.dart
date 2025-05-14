import 'package:dartz/dartz.dart';
import 'package:moodcast/Core/Errors/failures.dart';
import 'package:moodcast/Features/Auth/Domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword(
    String name,
    String email,
    String password,
  );

  Future<void> signOut();
}
