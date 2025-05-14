import 'package:flutter/material.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    required this.text,
    this.onSaved,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        onSaved: onSaved,
        validator:
            validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your $text";
              }
              return null;
            },
        decoration: InputDecoration(
          labelText: text,
          suffixIcon: suffixIcon,
          labelStyle: TextStyle(color: AppColors.primaryColor),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
