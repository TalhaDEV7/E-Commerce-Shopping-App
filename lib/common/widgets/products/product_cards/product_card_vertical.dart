import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/styles/shadow.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/common/widgets/images/rounded_image.dart';
import 'package:my_app/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:my_app/common/widgets/texts/product_price_text.dart';
import 'package:my_app/common/widgets/texts/product_title_text.dart';
import 'package:my_app/feautures/shop/screens/productdetails/product_details.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(USizes.productImageRadius),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Thumbnail & Favourate Button & discount tag 
          URoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(USizes.sm),
            backgroundColor: dark ? UColors.dark: UColors.light,
            child: Stack(
              children: [
                /// Thumbnail
                Center(
                  child: URoundedImage(
                    imageUrl: UImages.productImage15),
                ),
                /// Discount tag
                Positioned(
                  top: 12.0,
                  child: URoundedContainer(
                    radius: USizes.md,
                    backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                    padding: const EdgeInsets.symmetric(horizontal: USizes.md, vertical: USizes.xs),
                    child: Text('20%', style: Theme.of(context).textTheme.labelLarge),
                  ),
                ),
                /// favourate button
                Positioned(
                  right: 0,
                  top: 0,
                  child: UCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
                    ),
              ],
            ),
          ),
        SizedBox(height: USizes.spaceBtwItems/2),
        
        /// product Details
        Padding(
          padding: const EdgeInsets.only(left: USizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        /// Product title
              UProductTitleText(title: 'Blue bata shoes', smallSize: true,),
              SizedBox(height: USizes.spaceBtwItems/2),
        /// product brand
              UBrandTitleWithVerifyIcon(title: 'Bata',),
              
      

            ],
          ),
        ),
        Spacer(),
        /// product price & Add Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        /// product price
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: UProductPriceText(
                price: '65',
              ),
            ),
        /// add button    
            Container(
              width: USizes.iconLg * 1.2,
              height: USizes.iconLg * 1.2,
              decoration: BoxDecoration(
                color: UColors.primary,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(USizes.cardRadiusMd), bottomRight: Radius.circular(USizes.productImageRadius) )
              ),
              child: Icon(Iconsax.add, color: UColors.white,),
            )
          ],
        ),
        ],
      ),
      ),
    );
  }
}
