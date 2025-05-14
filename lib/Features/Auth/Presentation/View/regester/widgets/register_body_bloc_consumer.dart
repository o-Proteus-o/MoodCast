import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:moodcast/Features/Auth/Presentation/Manager/register_cubit/register_cubit.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/register_body.dart';

class RegisterBodyBlocConsumer extends StatelessWidget {
  const RegisterBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          Get.snackbar("hi", "success");
        }
        if (state is RegisterFailure) {
          Get.snackbar("Error", state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is RegisterLoading ? true : false,
          child: RegisterBody(imagePath: "assets/images/register.png"),
        );
      },
    );
  }
}
