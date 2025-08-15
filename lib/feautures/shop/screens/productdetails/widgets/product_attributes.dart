import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/chips/choice_chip.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/common/widgets/texts/product_price_text.dart';
import 'package:my_app/common/widgets/texts/product_title_text.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// selected attributes pricing and description
        URoundedContainer(
          backgroundColor: dark ? UColors.darkGrey: UColors.white,
          padding: EdgeInsets.all(USizes.md),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
            // title price and stock
            Row(
              children: [
                //// variation heading
                 USectionHeading(title: 'Variation', showActionButton: false,),
                SizedBox(width: USizes.spaceBtwItems,),
                Column(
                  children: [
                    //// price sale price and actual price
                     Row(
              children: [
               /// text price 
                UProductTitleText(title: 'Pice', smallSize: true,),
                // actual price
                Text('250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                SizedBox(width: USizes.spaceBtwItems,),
                /// sale price
                UProductPriceText(price: '200'),
            
              ],
            ),
          ///// stock status 
            Row(
              children: [
                UProductTitleText(title: 'Stock', smallSize: true,),
                Text('250',style: Theme.of(context).textTheme.titleMedium)
    
              ],
            )
                  ],
                )
              ],
            ),
          /// attribute description
           
           UProductTitleText(title: 'This is a product of Iphone 11 with 512 gb', smallSize: true, maxLines: 4,),
    
          ],
          ),
          ),
        
          SizedBox(height: USizes.spaceBtwItems),
          /// Attributes color
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               USectionHeading(title: 'Colors', showActionButton: false,),
               SizedBox(height: USizes.spaceBtwItems/2),
               Wrap(
                spacing: USizes.sm,
                children: [
                  
          UChoiceChip(text: 'red', selected: true, onSelected: (value ) {  },),
          UChoiceChip(text: 'blue', selected: true, onSelected: (value ) {  },),
          UChoiceChip(text: 'Orange', selected: true, onSelected: (value ) {  },),
                ],
               )
    
          
            ],
            /// attributes sizes
    
          ),
    
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               USectionHeading(title: 'Colors', showActionButton: false,),
               SizedBox(height: USizes.spaceBtwItems/2),
               Wrap(
                spacing: USizes.sm,
                children: [
                  
          UChoiceChip(text: 'red', selected: true, onSelected: (value ) {  },),
          UChoiceChip(text: 'blue', selected: true, onSelected: (value ) {  },),
          UChoiceChip(text: 'Orange', selected: true, onSelected: (value ) {  },),
                ],
               )
    
          
            ],
          ),
          
    
          ],
    
    );
  }
}
