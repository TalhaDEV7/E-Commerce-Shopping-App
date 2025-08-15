import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/feautures/shop/screens/cart/cart.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        /// bag icon ! cart icon
        IconButton(
          onPressed: ()=>Get.to(()=>CartScreen()),
          icon: const Icon(Iconsax.shopping_bag),
          color: UColors.light,
        ),
        ///counter text
        Positioned(
          right: 6.0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: dark ? UColors.dark : UColors.light,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  fontSizeFactor:0.8,
                  color: dark ? UColors.light : UColors.dark,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
