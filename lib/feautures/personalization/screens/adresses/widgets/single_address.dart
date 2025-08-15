import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class USingleAddress extends StatelessWidget {
  const USingleAddress({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      width: double.infinity,
      backgroundColor: isSelected
          ? UColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: isSelected ? Colors.transparent : dark? UColors.darkerGrey: UColors.grey,
      showBorder: true,
      padding: EdgeInsets.all(USizes.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// name user
              Text(
                'talhatariq',
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: USizes.spaceBtwItems/2),

              /// phone number
              Text('03091542672', maxLines: 1, overflow: TextOverflow.ellipsis),
              SizedBox(height: USizes.spaceBtwItems/2),

              /// addresses
              Text(
                'Civil Chowk Circulor road daska',
                
              ),
            ],
          ),
          if (isSelected)
            Positioned(
              top: 0,
              bottom: 0,
              right: 6,
              child: Icon(Iconsax.tick_circle5),
            ),
        ],
      ),
    );
  }
}
