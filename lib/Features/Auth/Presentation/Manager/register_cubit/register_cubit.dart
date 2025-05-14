import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:moodcast/Features/Auth/Domain/entities/user_entity.dart';
import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());

  final AuthRepo authRepo;

  Future<void> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());

    final result = await authRepo.signUpWithEmailAndPassword(
      name,
      email,
      password,
    );

    result.fold(
      (failure) => emit(RegisterFailure(failure.message)),
      (user) => emit(RegisterSuccess(user)),
    );
  }
}
