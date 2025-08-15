import 'package:flutter/material.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Sports', style: Theme.of(context).textTheme.headlineSmall),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// sub category
              USectionHeading(title: 'Sports Shoes', onPressed: () {}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// horizantol product card
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems/2,),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return UProductCardHorizontal();
                  },
                ),
              ),

              /// sub category
              USectionHeading(title: 'Sports Shoes', onPressed: () {}),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// horizantol product card
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems/2,),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return UProductCardHorizontal();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
