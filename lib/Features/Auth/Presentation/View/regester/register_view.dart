import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';
import 'package:moodcast/Features/Auth/Presentation/Manager/register_cubit/register_cubit.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/register_body_bloc_consumer.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(GetIt.I<AuthRepo>()),
      child: Scaffold(
        backgroundColor: AppColors.registerPageColor,
        body: const RegisterBodyBlocConsumer(),
      ),
    );
  }
}
