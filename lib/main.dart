import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moodcast/Core/Utils/Routes/on_generated_routes.dart';
import 'package:moodcast/Features/OnBoarding/Presentation/view/on_boarding_view.dart';
// import 'package:moodcast/Features/Splash/Presentation/views/splash_veiw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      onGenerateRoute: onGenerateRoute,
      initialRoute: OnBoardingView.onBoeading,
    );
  }
}
