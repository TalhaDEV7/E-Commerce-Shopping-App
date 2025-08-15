import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/images/rounded_image.dart';
import 'package:my_app/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:my_app/common/widgets/texts/product_title_text.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UCartItem extends StatelessWidget {
  const UCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// product image
        URoundedImage(
          imageUrl: UImages.productImage10,
          height: 60,
          width: 60,
          padding: EdgeInsets.all(USizes.sm),
          backgroundColor: dark ? UColors.darkerGrey : UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems),

        /// brand, name, variation
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //brand
              UBrandTitleWithVerifyIcon(title: 'iphone'),
              // title
              UProductTitleText(title: 'iphone 11 64gb', maxLines: 1),
              //// variations
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Storage ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '512gb ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
