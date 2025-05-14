import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moodcast/Core/Constant/app_constant.dart';
import 'package:moodcast/Core/Services/shared_prefrences_singelton.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/login_view.dart';
import 'package:moodcast/Features/OnBoarding/Presentation/view/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Moodcast",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }

  void executeNavigation() {
    bool onBoardingIsSenn = SharedPrefrencesSingelton.getBool(isViewSeen);
    Future.delayed(const Duration(seconds: 3));
    () {
      if (onBoardingIsSenn) {
        Get.to(
          LoginView(),
          transition: Transition.cupertino,
          duration: Duration(milliseconds: 250),
        );
      } else {
        Get.to(
          OnBoardingView(),
          transition: Transition.cupertino,
          duration: Duration(milliseconds: 250),
        );
      }
    };
  }
}
