import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app/utils/constants/sizes.dart';

class OnboardingPage extends StatelessWidget {
  final String animation;
  final String title;
  final String subtitle;
  const OnboardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: USizes.appBarHeight),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
