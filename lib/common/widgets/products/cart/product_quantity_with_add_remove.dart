import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UProductQuantityWithAddRemove extends StatelessWidget {
  const UProductQuantityWithAddRemove({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        UCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: USizes.iconSm,
          color: dark ? UColors.white : UColors.black,
          backgroundColor: dark ? UColors.darkerGrey : UColors.light,
        ),

        SizedBox(width: USizes.spaceBtwItems),

        ///counter text
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: USizes.spaceBtwItems),

        ///decrement button
        UCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: USizes.iconSm,
          color: dark ? UColors.white : UColors.black,
          backgroundColor: UColors.primary,
        ),
      ],
    );
  }
}
