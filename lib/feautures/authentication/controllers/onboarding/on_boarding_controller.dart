import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/feautures/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pagecontroller = PageController();
  RxInt currentIndex = 0.obs;
  //update current index when page scroll
  // ignore: strict_top_level_inference
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  //jump to specific dot selected page

  // ignore: strict_top_level_inference
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pagecontroller.jumpToPage(index);
  }

  // update current index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(() => LoginScreen());
      return;
    }
    currentIndex.value++;
    pagecontroller.jumpToPage(currentIndex.value);
  }

  // update current indec and jump to the last page
  void skipPage() {
    currentIndex.value = 2;
    pagecontroller.jumpToPage(currentIndex.value);
  }
}
