import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:moodcast/Features/Auth/Presentation/View/login/login_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> onboardingData = [
    {
      "title": "🌤️ Welcome to MoodCast",
      // "image": "assets/weather/one.svg",
      "description":
          "Discover how the weather affects your mood.\nMoodCast helps you tune in, reflect, and \nstay balanced—rain or shine.",
    },
    {
      "title": "🌦️ Mood Meets Weather",
      // "image": "assets/weather/two.svg",
      "description":
          "We combine local weather data with \nemotional insightsto help you track patterns, \nreflect, and understand yourself better.",
    },
    {
      "title": "🌈 Start Your Mood Journey",
      // "image": "assets/weather/four.svg",
      "description":
          "Ready to see how sunshine lifts your \nspirits—or how rain soothes your soul? \nLet’s personalize your experience.",
    },
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 3,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 32),
                  Text(
                    onboardingData[index]['title']!,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  // Image.asset(onboardingData[index]["image"]!),
                  // SizedBox(height: 16),
                  Text(
                    onboardingData[index]['description']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 52),
                ],
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.904,
            bottom: 40,
            left:
                _currentPage == onboardingData.length - 1
                    ? MediaQuery.of(context).size.width * 0.25
                    : MediaQuery.of(context).size.width * 0.80,
            right:
                _currentPage == onboardingData.length - 1
                    ? MediaQuery.of(context).size.width * 0.25
                    : MediaQuery.of(context).size.width * 0.05,
            child: GestureDetector(
              onTap: () {
                if (_currentPage == onboardingData.length - 1) {
                  Get.to(LoginView(), transition: Transition.fade);
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOutCubic,
                  );
                  setState(() {
                    _currentPage++;
                  });
                }
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: _currentPage == onboardingData.length - 1 ? 16 : 8,
                  right: _currentPage == onboardingData.length - 1 ? 16 : 8,
                  top: 8,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                    _currentPage == onboardingData.length - 1
                        ? Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                        : Icon(
                          LucideIcons.arrowRight,
                          size: 28,
                          color: Colors.white,
                        ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
