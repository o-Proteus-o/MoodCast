import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:moodcast/Core/Constant/app_colors.dart';
import 'package:moodcast/Features/Auth/Presentation/Manager/register_cubit/register_cubit.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/alternative_signs.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/auth_alternative.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/widgets/custom_text_field.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/back_to_login.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/custom_password_field.dart';
import 'package:moodcast/Features/Auth/Presentation/View/regester/widgets/register_triger.dart';

class RegisterAuthBody extends StatefulWidget {
  const RegisterAuthBody({super.key});

  @override
  State<RegisterAuthBody> createState() => _RegisterAuthBodyState();
}

class _RegisterAuthBodyState extends State<RegisterAuthBody> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool obscureText = true;
  late String name, password, email;
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
        key: formkey,
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
                name = val!;
              },
              text: "Name",
            ),
            CustomTextField(
              onSaved: (val) {
                email = val!;
              },
              text: "Email",
            ),
            CustomPasswordField(
              obscureText: obscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  obscureText = !obscureText;
                },
                child:
                    obscureText
                        ? Icon(LucideIcons.eyeOff)
                        : Icon(LucideIcons.eye),
              ),
              text: "Password",
              onSaved: (val) {
                password = val!;
              },
            ),
            RegisterTriger(
              onTap: () {
                context.read<RegisterCubit>().signUpWithEmailAndPassword(
                  name: name,
                  email: email,
                  password: password,
                );
              },
              text: "Register",
              image: "assets/images/register_arrow.png",
            ),
            RegisterOrLogin(),
            AuthAlternative(),
            AltenativeSigns(),
          ],
        ),
      ),
    );
  }
}
