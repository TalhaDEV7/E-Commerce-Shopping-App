import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/widgets/appbar/tab_bar.dart';
import 'package:my_app/common/widgets/brands/brand_card.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/feautures/shop/screens/brands/all_brands.dart';
import 'package:my_app/feautures/shop/screens/store/widgets/category_tab.dart';
import 'package:my_app/feautures/shop/screens/store/widgets/store_primary_header.dart';
import 'package:my_app/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                pinned: true,
                floating: false,

                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// primary header
                      UStorePrimaryHeader(),
                      SizedBox(height: USizes.spaceBtwItems),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: USizes.defaultSpace,
                        ),
                        child: Column(
                          children: [
                            // brands heading
                            USectionHeading(title: 'Brands', onPressed: ()=> Get.to(()=>BrandsScreen())),
                            // brand card
                            SizedBox(
                              height: 70.0,
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: USizes.spaceBtwItems);
                                },
                                shrinkWrap: true,
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => SizedBox(
                                  width: USizes.brandCardWidth,
                                  child: UBrandCard()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: UTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Data')),
                    Tab(child: Text('Talhas')),
                    Tab(child: Text('Tariqs')),
                    Tab(child: Text('data')),
                  ],
                ),
              ),
            ];
          },
           
          body: TabBarView(
            children: [
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
