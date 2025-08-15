import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:my_app/feautures/authentication/controllers/onboarding/on_boarding_controller.dart';
import 'package:my_app/utils/helpers/device_helpers.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});
 
  @override
  Widget build(BuildContext context) {
    
    final controller = OnBoardingController.instance;
    return Obx(
      ()=>controller.currentIndex.value == 2 ? SizedBox() : Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(onPressed: controller.skipPage, child: Text('Skip')),
      ),
    );
  }
}
