import 'package:flutter/material.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
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
