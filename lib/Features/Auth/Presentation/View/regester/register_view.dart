import 'package:flutter/material.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/register_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.registerPageColor,
      body: RegisterBody(imagePath: "assets/images/register.png"),
    );
  }
}
