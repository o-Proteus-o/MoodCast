import 'package:flutter/material.dart';
import 'package:moodcast/Features/Splash/Presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String splash = "splash";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
