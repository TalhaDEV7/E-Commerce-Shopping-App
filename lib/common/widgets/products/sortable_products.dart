import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_app/utils/constants/sizes.dart';

class USortableProducts extends StatelessWidget {
  const USortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// filter field
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: ['Name', 'Lower Price', 'Higher Price', 'Sale', 'Newest']
              .map((filter) {
                return DropdownMenuItem(
                  value: filter,
                  child: Text(filter),
                );
              })
              .toList(),
          onChanged: (value) {},
        ),
        SizedBox(height: USizes.spaceBtwSections),
      /// products
      UGridLayout(itemCount: 10, itemBuilder: (context, index) => UProductCardVertical(),)
      ],
    );
  }
}
