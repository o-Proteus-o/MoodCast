import 'package:flutter/material.dart';
import 'package:moodcast/Features/OnBoarding/Presentation/view/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: OnBoardingView(),
    );
  }
}
