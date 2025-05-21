import 'package:flutter/material.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/login_view.dart';
import 'package:moodcast/Features/Home/Presentation/Views/home_view/home_view.dart';
import 'package:moodcast/Features/OnBoarding/Presentation/view/on_boarding_view.dart';
import 'package:moodcast/Features/Splash/Presentation/views/splash_veiw.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routname:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case HomeView.home:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
