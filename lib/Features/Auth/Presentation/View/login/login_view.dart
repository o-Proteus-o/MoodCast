import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';
import 'package:moodcast/Features/Auth/Presentation/Manager/login_cubit/login_cubit.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/login_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routname = "login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(GetIt.I<AuthRepo>()),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: LoginBlocConsumer(),
      ),
    );
  }
}
