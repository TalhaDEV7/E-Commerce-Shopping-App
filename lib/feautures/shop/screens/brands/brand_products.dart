import 'package:flutter/material.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/brands/brand_card.dart';
import 'package:my_app/common/widgets/products/sortable_products.dart';
import 'package:my_app/utils/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Bata', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [
            /// brand
            UBrandCard(),
            SizedBox(height: USizes.spaceBtwItems,),


            /// brand products
            USortableProducts(),
          ],
        ),
        ),
      ),

    );
  }
}