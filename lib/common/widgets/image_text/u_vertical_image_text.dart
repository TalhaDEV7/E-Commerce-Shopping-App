import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UVerticalImageText extends StatelessWidget {
  const UVerticalImageText({super.key, required this.title, required this.image, required this.textColor, this.background, this.onTap});
  final String title, image;
  final Color textColor;
  final Color? background;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
       bool dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        
      },
      child: Column(
        children: [
          /// circulor image
          UCircularContainer(
            height: 56,
            width: 56,
            backgroundColor: background ?? (dark? UColors.dark: UColors.light),
            padding: EdgeInsets.all(USizes.sm),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: USizes.spaceBtwItems / 2),
      
          /// title
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
