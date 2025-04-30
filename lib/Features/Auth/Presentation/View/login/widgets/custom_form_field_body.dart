import 'package:flutter/material.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/account_row.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/alternative_signs.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/auth_alternative.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/choices_row.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/custom_text_field.dart';

class CustomFormFieldBody extends StatelessWidget {
  const CustomFormFieldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Welcome \nBack",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          CustomTextField(text: "Email"),
          CustomTextField(text: "Password"),
          AccountRow(image: "assets/images/login_arrow.png", text: "Sign In"),
          ChoicesRow(signText: "Sign Up", forget: "Forget Password?"),
          AuthAlternative(),
          AltenativeSigns(),
        ],
      ),
    );
  }
}
