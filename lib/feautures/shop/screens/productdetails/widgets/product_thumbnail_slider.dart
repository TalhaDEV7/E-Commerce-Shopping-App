import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/common/widgets/images/rounded_image.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UProductThumbnailSlider extends StatelessWidget {
  const UProductThumbnailSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkGrey : UColors.light,
      child: Stack(
        children: [
          //// image thumbnail
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(USizes.productImageRadius + 2),
              child: Center(
                child: Image(image: AssetImage(UImages.productImage3)),
              ),
            ),

            ///image slider
          ),
          Positioned(
            left: USizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(width: USizes.spaceBtwItems),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => URoundedImage(
                  width: 80,
                  backgroundColor: dark ? UColors.dark : UColors.white,
                  padding: EdgeInsets.all(USizes.sm),
                  border: Border.all(color: UColors.primary),
                  imageUrl: UImages.productImage2,
                ),
              ),
            ),
          ),
          // app bar back arrow and fav button
          UAppBar(
            showBackArrow: true,
            actions: [UCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
          ),
        ],
      ),
    );
  }
}
