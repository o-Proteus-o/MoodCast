import 'package:flutter/material.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/register_auth_body.dart';

class RegisterBody extends StatelessWidget {
  final String imagePath;
  const RegisterBody({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10),
        Image.asset(imagePath),
        RegisterAuthBody(),
      ],
    );
  }
}
