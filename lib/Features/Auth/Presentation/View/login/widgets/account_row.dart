import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Home/Presentation/Views/home_view/home_view.dart';

class AccountRow extends StatelessWidget {
  final String text;
  final String image;
  const AccountRow({super.key, required this.text, required this.image});

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
            onTap: () {
              Get.to(
                HomeView(),
                transition: Transition.cupertino,
                duration: Duration(milliseconds: 900),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
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
