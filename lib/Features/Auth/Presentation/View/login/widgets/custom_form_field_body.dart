import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Presentation/Manager/login_cubit/login_cubit.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/account_row.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/alternative_signs.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/auth_alternative.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/choices_row.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/custom_text_field.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/custom_password_field.dart';

class CustomFormFieldBody extends StatefulWidget {
  const CustomFormFieldBody({super.key});

  @override
  State<CustomFormFieldBody> createState() => _CustomFormFieldBodyState();
}

class _CustomFormFieldBodyState extends State<CustomFormFieldBody> {
  bool obscureText = true;
  GlobalKey<FormState> formk = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
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
      child: Form(
        key: formk,
        autovalidateMode: autovalidateMode,
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
            CustomTextField(
              onSaved: (val) {
                email = val!;
              },
              text: "Email",
            ),
            CustomPasswordField(
              suffixIcon: GestureDetector(
                onTap: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                child:
                    obscureText
                        ? Icon(LucideIcons.eye)
                        : Icon(LucideIcons.eyeOff),
              ),
              onSaved: (val) {
                password = val!;
              },
              text: "Password",
              obscureText: obscureText,
            ),
            AccountRow(
              image: "assets/images/login_arrow.png",
              text: "Sign In",
              onTap: () {
                formk.currentState!.save();
                if (formk.currentState!.validate()) {
                  context.read<LoginCubit>().signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            ChoicesRow(signText: "Sign Up", forget: "Forget Password?"),
            AuthAlternative(),
            AltenativeSigns(onGoogle: () {}, onFacebook: () {}),
          ],
        ),
      ),
    );
  }
}
