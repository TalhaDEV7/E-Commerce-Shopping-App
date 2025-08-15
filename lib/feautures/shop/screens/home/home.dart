import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_app/common/widgets/textfield/search_bar.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/feautures/shop/controllers/home/home_controller.dart';
import 'package:my_app/feautures/shop/screens/all_products/all_products.dart';
import 'package:my_app/feautures/shop/screens/home/widgets/home_app_bar.dart';
import 'package:my_app/feautures/shop/screens/home/widgets/home_catogries.dart';
import 'package:my_app/feautures/shop/screens/home/widgets/promo_slider.dart';
import 'package:my_app/common/widgets/custom_shapes/u_primary_header_container.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// upper part///
            Stack(
              children: [
                /// total height + 10
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),

                /// primary header container
                UPrimaryHeaderContainer(
                  height: USizes.homePrimaryHeaderHeight,
                  child: Column(
                    children: [
                      UHomeAppBar(),
                      SizedBox(height: USizes.spaceBtwSections),

                      /// Home Categories
                      UHomeCatogries(),
                    ],
                  ),
                ),

                /// searchbar
                USearchBar(),
              ],
            ),
            //// lower part///
            //// banners
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  UPromoSlider(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                    ],
                  ),
                  SizedBox(height: USizes.spaceBtwSections),

                  /// Section Heading
                  USectionHeading(title: 'Populor Products', onPressed: () =>(()=>AllProductsScreen())),
                  const SizedBox(height: USizes.spaceBtwSections),

                  /// Grid view of Product Card
                  UGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return UProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
