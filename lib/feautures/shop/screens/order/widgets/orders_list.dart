import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UOrdersList extends StatelessWidget {
  const UOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: USizes.spaceBtwItems,),
      itemCount: 10,
      itemBuilder: (context, index){
      return URoundedContainer(
      showBorder: true,
      backgroundColor: dark?UColors.dark:UColors.light,
      padding: EdgeInsets.all(USizes.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// 1-ROW
          Row(
            children: [
              Icon(Iconsax.ship), 
              SizedBox(width: USizes.spaceBtwItems/2),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color:  UColors.primary, fontWeightDelta: 1)),
                    Text('01 Dec 2025',style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),
              IconButton(onPressed:(){} , icon: Icon(Iconsax.arrow_right_34, size: USizes.iconSm,))
            ],
          ),
          SizedBox(width: USizes.spaceBtwItems/2,),
          /// 2-ROW

          Row(
            children: [
              Expanded(
                child: Row(
                            children: [
                Icon(Iconsax.tag), 
                SizedBox(width: USizes.spaceBtwItems/2),
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order',style: Theme.of(context).textTheme.labelMedium),
                      Text('42532',style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
                IconButton(onPressed:(){} , icon: Icon(Iconsax.arrow_right_34, size: USizes.iconSm,))
                            ],
                          ),
              ),

              Expanded(
                child: Row(
                            children: [
                Icon(Iconsax.calendar), 
                SizedBox(width: USizes.spaceBtwItems/2),
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium),
                      Text('01 Dec 2025',style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
                IconButton(onPressed:(){} , icon: Icon(Iconsax.arrow_right_34, size: USizes.iconSm,))
                            ],
                          ),
              ),

            ],
          ),
        ],
      ),
      );
    });
  }
}
