part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  final UserEntitny user;

  RegisterSuccess(this.user);
}

final class RegisterFailure extends RegisterState {
  final String message;

  RegisterFailure(this.message);
}
