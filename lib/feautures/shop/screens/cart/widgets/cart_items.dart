import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/products/cart/cart_item.dart';
import 'package:my_app/common/widgets/products/cart/product_quantity_with_add_remove.dart';
import 'package:my_app/common/widgets/texts/product_price_text.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({super.key, this.showAddRemoveButtons= true});
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          SizedBox(height: USizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            //// cart item
            UCartItem(),
            if (showAddRemoveButtons) SizedBox(height: USizes.spaceBtwItems),

            ///price, counter button
            if (showAddRemoveButtons) Row(
              children: [
                /// extra space
                SizedBox(width: 70),

                ///quantity buttons
                UProductQuantityWithAddRemove(),
                Spacer(),
                //product price
                UProductPriceText(price: '323'),
              ],
            ),
          ],
        );
      },
    );
  }
}
