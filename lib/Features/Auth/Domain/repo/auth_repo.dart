import 'package:dartz/dartz.dart';
import 'package:moodcast/Core/Errors/failures.dart';
import 'package:moodcast/Features/Auth/Domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntitny>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntitny>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<void> signOut();
}
