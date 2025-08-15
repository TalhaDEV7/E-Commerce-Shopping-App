import 'package:flutter/material.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/feautures/shop/screens/productdetails/widgets/bottom_add_to_cart.dart';
import 'package:my_app/feautures/shop/screens/productdetails/widgets/product_attributes.dart';
import 'package:my_app/feautures/shop/screens/productdetails/widgets/product_meta_data.dart';
import 'package:my_app/feautures/shop/screens/productdetails/widgets/product_thumbnail_slider.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///---body
      body: SingleChildScrollView(
        child: Column(
          children: [
            ////----product image slider----
            UProductThumbnailSlider(),
            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  
               
              ///----product details----
              UProductMetaData(),
              SizedBox(height: USizes.spaceBtwSections),
              ///----attributes------
              UProductAttributes(),
               SizedBox(height: USizes.spaceBtwSections),
              ///----checkout button----
              UElevatedButton(onPress: (){}, 
              child: Text('checkout'), onPressed: (){}),
              SizedBox(height: USizes.spaceBtwSections),
              ///----description-----
              USectionHeading(title: 'Description'),
               SizedBox(height: USizes.spaceBtwItems),
              
               ReadMoreText('This is a profuct of iphone 11 with 512 gb, this is a product of iphone 11 with 512 gb,this is a profuct of iphone 11 with 512 gb, this is a product of iphone 11 with 512 gb',
               trimLines: 2,
               trimMode: TrimMode.Line,
               trimCollapsedText: 'Show more',
               trimExpandedText: 'Less',
               moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
               lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
               ),
               SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            )

          ],
        ),
      ),

      ////----bottom navigation
      bottomNavigationBar: UBottomAddToCart(),
    );
  }
}
