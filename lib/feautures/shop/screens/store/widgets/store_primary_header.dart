import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:my_app/common/widgets/textfield/search_bar.dart';
import 'package:my_app/common/widgets/custom_shapes/u_primary_header_container.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
    /// total height + 10
    SizedBox(height: USizes.storePrimaryHeaderHeight + 10),
    
    /// primary header container
    UPrimaryHeaderContainer(
    height: USizes.storePrimaryHeaderHeight,
    child: UAppBar(
    title: Text('store', style: Theme.of(context).textTheme.headlineMedium!.apply(color: UColors.white)),
    actions: [
    UCartCounterIcon(),
     ],
    ),
      ),
    
    /// searchbar
    USearchBar(),
                  ],
                );
  }
}
