import 'package:flutter/material.dart';

import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/common/widgets/images/circular_image.dart';
import 'package:my_app/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:my_app/common/widgets/texts/product_price_text.dart';
import 'package:my_app/common/widgets/texts/product_title_text.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///sale tag, sale price, actual button, share button
        Row(
          children: [
            URoundedContainer(
              radius: USizes.md,
              backgroundColor: UColors.yellow.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: USizes.md,
                vertical: USizes.xs,
              ),
              child: Text(
                '20% ',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(height: USizes.spaceBtwItems),
        
            /// sale price
            Text(
              '\$250 ',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(height: USizes.spaceBtwItems),
        
            /// actual price
            UProductPriceText(price: ' 150', isLarge: true),
            Spacer(),
            /// share button
            IconButton(onPressed: (){}, icon: Icon(Icons.share))
          ],
        ),
     SizedBox(height: USizes.spaceBtwItems),
     /// product title
     UProductTitleText(title: 'Iphone11'),
     SizedBox(height: USizes.spaceBtwItems),
     // product status
     Row(
       children: [
         UProductTitleText(title: 'Status'),
         Text('In Stock', style: Theme.of(context).textTheme.titleSmall)
       ],
     ),
     SizedBox(height: USizes.spaceBtwItems),
      
        
      Row(
        children: [
          UCircularImage(image: UImages.appleLogo, width: 32, height: 32,),
          SizedBox(height: USizes.spaceBtwItems),
          UBrandTitleWithVerifyIcon(title: 'Apple'),
        ],
      )
      
      
      
      ],
    );
  }
}
