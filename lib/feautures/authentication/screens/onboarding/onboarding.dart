import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/feautures/authentication/controllers/onboarding/on_boarding_controller.dart';
import 'package:my_app/feautures/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:my_app/feautures/authentication/screens/onboarding/widgets/on_boarding_skip_button.dart';
import 'package:my_app/feautures/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:my_app/feautures/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pagecontroller,
              onPageChanged:controller.updatePageIndicator,
              children: [
                OnboardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onBoardingTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                ),
                OnboardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onBoardingTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                ),
                OnboardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.onBoardingTitle3,
                  subtitle: UTexts.onBoardingSubTitle3,
                ),
              ],
            ),
            OnboardingDotNavigation(),
            OnBoardingNextButton(),
            OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}
