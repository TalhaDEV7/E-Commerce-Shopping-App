import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/styles/shadow.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        height: USizes.searchBarHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
          color:dark? UColors.dark: UColors.white,
          boxShadow: UShadow.searchBarShadow,
        ),
      child: Row(
        children: [
          /// search icon
          Icon(Iconsax.search_normal, color: UColors.darkGrey),
          SizedBox(width: USizes.spaceBtwItems,),
          // search bar title
          Text(UTexts.searchBarTitle, style: Theme.of(context).textTheme.bodySmall,)
        ],
      ),
      ),
    );
  }
}
