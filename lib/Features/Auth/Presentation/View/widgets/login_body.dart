import 'package:flutter/material.dart';
import 'package:moodcast/Features/Auth/Presentation/View/widgets/custom_form_field_body.dart';

class LoginBody extends StatelessWidget {
  final String imagePath;
  const LoginBody({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10),
        Image.asset(imagePath),
        CustomFormFieldBody(),
      ],
    );
  }
}
