import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lostify/home_page.dart';
import 'package:lostify/intro_screens/intro_page_1.dart';
import 'package:lostify/intro_screens/intro_page_2.dart';
import 'package:lostify/intro_screens/intro_page_3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          IntroPage1(),
          IntroPage2(),
          IntroPage3(),
          HomePage(),
        ],
        onPageChangeCallback: (page) {
          setState(() {
            currentPage = page;
          });
        },
        waveType: WaveType.liquidReveal,
        slideIconWidget: const Icon(Icons.arrow_back_ios), // Add a back icon
        enableLoop: false, // Disable loop for preventing going to the previous page
      ),

    );
  }
}
