import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/on_borading_next_btn.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/on_borading_skip.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboradingScreen extends StatelessWidget {
   const OnboradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final controller=Get.put(OnboradingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoradingPage(
                image: TImages.onBoradingScreen1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoradingPage(
                image: TImages.onBoradingScreen2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoradingPage(
                image: TImages.onBoradingScreen3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoradingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoradingNextBtn()
        ],
      ),
    );
  }
}
