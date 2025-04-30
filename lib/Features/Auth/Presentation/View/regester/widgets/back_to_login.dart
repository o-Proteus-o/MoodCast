import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';

class RegisterOrLogin extends StatelessWidget {
  const RegisterOrLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Already have an account?"),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
