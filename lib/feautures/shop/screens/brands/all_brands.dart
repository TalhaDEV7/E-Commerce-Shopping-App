import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/brands/brand_card.dart';
import 'package:my_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/feautures/shop/screens/brands/brand_products.dart';
import 'package:my_app/utils/constants/sizes.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Brand', style: Theme.of(context).textTheme.headlineSmall),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              ////text brands
              USectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              /// list of brands
              UGridLayout(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return UBrandCard(onTap: () => Get.to(()=>BrandProductsScreen()),);
                }, 
                mainAxisExtent: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
