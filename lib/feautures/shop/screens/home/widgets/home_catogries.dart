import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/widgets/image_text/u_vertical_image_text.dart';
import 'package:my_app/feautures/shop/screens/sub_categories/sub_categories.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';

class UHomeCatogries extends StatelessWidget {
  const UHomeCatogries({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// section heading
          Text(
            UTexts.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),
          SizedBox(height: USizes.spaceBtwItems),

          /// catogries listview
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems,),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UVerticalImageText(
                title: 'Sports Catogries',
                image: UImages.sportsIcon,
                textColor: UColors.white,
                onTap: ()=>Get.to(()=>SubCategoriesScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
