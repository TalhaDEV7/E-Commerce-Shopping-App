import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UPromoCodeField extends StatelessWidget {
  const UPromoCodeField({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
     final dark= UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(left: USizes.sm, right: USizes.sm, top: USizes.sm, bottom: USizes.sm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
       SizedBox(
        width: 80,
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.withValues(alpha: 0.2),
            foregroundColor: dark? UColors.white.withValues(alpha: 0.5)
            :UColors.dark.withValues(alpha: 0.5),
            side: BorderSide(color: Colors.grey.withValues(alpha: 0.1))
          ),
          onPressed: (){}, 
         child: Text('Apply')
         ),
       )
        ],
      ),
    );
  }
}