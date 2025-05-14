import 'package:dartz/dartz.dart';
import 'package:moodcast/Core/Errors/failures.dart';
import 'package:moodcast/Features/Auth/Domain/entities/user_entity.dart';
import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntitny>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntitny>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
