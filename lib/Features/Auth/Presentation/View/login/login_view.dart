import 'package:flutter/material.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Presentation/View/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routname = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: LoginBody(imagePath: "assets/images/login.png"),
    );
  }
}
