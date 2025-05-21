import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moodcast/Core/Constant/app_constant.dart';
import 'package:moodcast/Core/Services/get_it_service.dart';
import 'package:moodcast/Core/Services/shared_prefrences_singelton.dart';
import 'package:moodcast/Core/Utils/Routes/on_generated_routes.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/login_view.dart';
import 'package:moodcast/Features/Home/Presentation/Views/home_view/home_view.dart';
import 'package:moodcast/Features/OnBoarding/Presentation/view/on_boarding_view.dart';
import 'package:moodcast/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPrefrencesSingelton.init();
  setup();
  runApp(const MoodCast());
}

class MoodCast extends StatelessWidget {
  const MoodCast({super.key});

  @override
  Widget build(BuildContext context) {
    String initialRoute;
    if (!SharedPrefrencesSingelton.getBool(isViewSeen)) {
      initialRoute = OnBoardingView.onBoarding;
    } else if (!SharedPrefrencesSingelton.isAuthDone()) {
      initialRoute = LoginView.routname;
    } else {
      initialRoute = HomeView.home;
    }
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      onGenerateRoute: onGenerateRoute,
      initialRoute: initialRoute,
    );
  }
}
