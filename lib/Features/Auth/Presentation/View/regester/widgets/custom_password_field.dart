import 'package:flutter/material.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/custom_text_field.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    super.key,
    required this.text,
    this.onSaved,
    this.suffixIcon,
    required this.obscureText,
  });
  final String text;
  final void Function(String?)? onSaved;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      suffixIcon: suffixIcon,
      onSaved: onSaved,
      obscureText: obscureText,
      text: "Password",
    );
  }
}
