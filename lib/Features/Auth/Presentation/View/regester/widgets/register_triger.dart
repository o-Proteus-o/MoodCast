import 'package:flutter/material.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';

class RegisterTriger extends StatelessWidget {
  final String text;
  final String image;
  final void Function()? onTap;
  const RegisterTriger({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.registerPageColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}
