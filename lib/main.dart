import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moodcast/Core/Utils/Routes/on_generated_routes.dart';
import 'package:moodcast/Features/OnBoarding/Presentation/view/on_boarding_view.dart';
import 'package:moodcast/firebase_options.dart';
// import 'package:moodcast/Features/Splash/Presentation/views/splash_veiw.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
