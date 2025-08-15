import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/texts.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        children: [
          /// title
          Text(
            UTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: UColors.grey),
          ),
          /// subtitle
          Text(
            UTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),
        ],
      ),
      actions: [
        UCartCounterIcon(),
      ],
    );
  }
}
