import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/brands/brand_showcase.dart';
import 'package:my_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: USizes.defaultSpace,
          ),
          child: Column(
            children: [
              /// brand showcase 1
              UBrandShowcase(
                images: [
                  UImages.productImage47,
                  UImages.productImage43,
                  UImages.productImage7,
                ],
              ),
              /// brand showcase 2
              UBrandShowcase(
                images: [
                  UImages.productImage47,
                  UImages.productImage43,
                  UImages.productImage7,
                ],
              ),
              /// you might like section heading
              USectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              /// Grid layout products
              UGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UProductCardVertical();
                },
              ),
              SizedBox(height: USizes.spaceBtwSections,)
            ],
          ),
        ),
      ],
    );
  }
}
