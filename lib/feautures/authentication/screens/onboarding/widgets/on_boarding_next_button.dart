import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/feautures/authentication/controllers/onboarding/on_boarding_controller.dart';
import 'package:my_app/utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
        onPress: controller.nextPage,
        onPressed: () {  },
        child: Obx(
          () =>
              Text(controller.currentIndex.value == 2 ? 'Get Started' : 'Next'),
        ),
      ),
    );
  }
}
