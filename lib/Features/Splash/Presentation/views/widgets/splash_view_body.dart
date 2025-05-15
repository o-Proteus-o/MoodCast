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
    super.initState();
    _navigateAfterSplash();
  }

  Future<void> _navigateAfterSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    bool onBoardingIsSeen = SharedPrefrencesSingelton.getBool(isViewSeen);
    if (onBoardingIsSeen) {
      Get.off(
        () => LoginView(),
        transition: Transition.cupertino,
        duration: Duration(milliseconds: 250),
      );
    } else {
      Get.off(
        () => OnBoardingView(),
        transition: Transition.cupertino,
        duration: Duration(milliseconds: 250),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Moodcast",
            style: TextStyle(fontFamily: "Amiga", fontSize: 38),
          ),
        ),
      ],
    );
  }
}
