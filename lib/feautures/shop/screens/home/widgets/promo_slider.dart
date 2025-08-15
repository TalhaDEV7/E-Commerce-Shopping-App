import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/images/rounded_image.dart';
import 'package:my_app/feautures/shop/controllers/home/home_controller.dart';
import 'package:my_app/feautures/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        //// slider
        CarouselSlider(
          items: banners
              .map((banner) => URoundedImage(imageUrl: banner))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              return controller.onPageChanged(index);
            },
          ),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: USizes.spaceBtwItems),
        BannersDotNavigation(),
      ],
    );
  }
}
