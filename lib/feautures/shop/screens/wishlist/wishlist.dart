import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_app/navigation_menu.dart';
import 'package:my_app/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //// ---- app bar----
      appBar: UAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          UCircularIcon(
            icon: Iconsax.add,
            onPressed: () =>
                NavigationController.instance.selectedIndex.value = 0,
          ),
        ],
      ),
      ////-----body------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: UGridLayout(
            itemCount: 10,
            itemBuilder: (context, index) {
              return UProductCardVertical();
            },
          ),
        ),
      ),
    );
  }
}
