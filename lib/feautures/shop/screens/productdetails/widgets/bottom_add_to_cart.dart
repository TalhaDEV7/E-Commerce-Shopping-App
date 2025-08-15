import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UBottomAddToCart extends StatelessWidget {
  const UBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: USizes.defaultSpace,
        vertical: USizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(color: dark ? UColors.darkerGrey : UColors.light,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(USizes.cardRadiusLg),
        topRight: Radius.circular(USizes.cardRadiusLg),
      )
      ),
      
      child: Row(
        children: [
          /// decrement icon
          UCircularIcon(
            icon: Iconsax.minus,
            backgroundColor: UColors.grey,
            width: 40,
            height: 40,
            color: UColors.white,
          ),
          SizedBox(width: USizes.spaceBtwItems),

          /// counter
          Text('2', style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: USizes.spaceBtwItems),

          /// increment icon
          UCircularIcon(
            icon: Iconsax.add,
            backgroundColor: UColors.grey,
            width: 40,
            height: 40,
            color: UColors.white,
          ),
          Spacer(),
          /// add to card button
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(USizes.md),
            backgroundColor: UColors.black,
            side: BorderSide(color: UColors.black),
          ), 
          child: Row(
            children: [
              
              Icon(Iconsax.shopping_bag),
              SizedBox(width: USizes.spaceBtwItems/2),

              Text('Add To Cart'),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
