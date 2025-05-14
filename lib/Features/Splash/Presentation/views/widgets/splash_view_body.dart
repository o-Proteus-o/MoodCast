import 'package:flutter/material.dart';
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
    Future.delayed(const Duration(seconds: 3));
    () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingView()),
      );
    };
  }
}
