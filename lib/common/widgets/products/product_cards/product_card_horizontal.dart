import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/common/widgets/images/rounded_image.dart';
import 'package:my_app/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:my_app/common/widgets/texts/product_price_text.dart';
import 'package:my_app/common/widgets/texts/product_title_text.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UProductCardHorizontal extends StatelessWidget {
  const UProductCardHorizontal({
    super.key,
   
  });



  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          USizes.productImageRadius, ),
          color: dark? UColors.darkerGrey:UColors.light
      ),
      child: Row(
        children: [
          /// left portion
          URoundedContainer(
            height: 120,
            padding: EdgeInsets.all(USizes.sm),
            backgroundColor: dark? UColors.dark:UColors.light,
            child: Stack(
              children: [
                /// thumbnail
                SizedBox(
                  height: 120,
                  width: 120,
                  child: URoundedImage(imageUrl: UImages.productImage15)),
    
                /// discount tag
                   Positioned(
        top: 12.0,
        child: URoundedContainer(
          radius: USizes.md,
          backgroundColor: UColors.yellow.withValues(alpha: 0.8),
          padding: const EdgeInsets.symmetric(horizontal: USizes.md, vertical: USizes.xs),
          child: Text('20%', style: Theme.of(context).textTheme.labelLarge),
        ),
      ),
      /// favourate icon
      Positioned(
        right: 0,
        top: 0,
        child: UCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
          ),
                
              ],
            ),
          ),
        
        /// right portion
        /// 
        SizedBox(
          width: 170,
          child: Padding(
            padding: const EdgeInsets.only(left: USizes.sm, top: USizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product title
                UProductTitleText(title: 'Blue Bata Shoes', smallSize: true,),
                SizedBox(height: USizes.spaceBtwItems/2),
                // product brand
                UBrandTitleWithVerifyIcon(title: 'Bata')
              ],
            ),
              Spacer(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: UProductPriceText(price: '65')),
          
                  Container(
                width: USizes.iconLg * 1.2,
                height: USizes.iconLg * 1.2,
                decoration: BoxDecoration(
                  color: UColors.primary,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(USizes.cardRadiusMd), bottomRight: Radius.circular(USizes.productImageRadius) )
                ),
                child: Icon(Iconsax.add, color: UColors.white,),
              ),
                ],
               )
              ],
            )
          ),
        ),
        ],
      ),
    );
  }
}
