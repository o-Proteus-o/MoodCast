import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:moodcast/Features/Auth/Presentation/Manager/login_cubit/login_cubit.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/login_body.dart';
// import 'package:moodcast/Features/Home/Presentation/Views/home_view/home_view.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Get.snackbar("Hello", "You're In");
          // Get.to(HomeView());
        }
        if (state is LoginFailure) {
          Get.snackbar("Error", state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: LoginBody(imagePath: "assets/images/login.png"),
        );
      },
    );
  }
}
