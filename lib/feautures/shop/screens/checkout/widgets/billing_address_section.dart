import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UBillingAddressSection extends StatelessWidget {
  const UBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        USectionHeading(title: 'Billing Address', buttonTitle: 'Change',onPressed: (){},),
        Text('Talhatariq', style: 
        Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: USizes.spaceBtwItems/2),

        Row(
          children: [
            Icon(Icons.phone, size: USizes.iconSm, color: UColors.darkGrey,),
            SizedBox(height: USizes.spaceBtwItems),
            Text('03091542672')
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems/2),
        Row(
          children: [
            Icon(Icons.location_history, size: USizes.iconSm, color: UColors.darkGrey,),
            SizedBox(height: USizes.spaceBtwItems),
            Expanded(child: Text('Civil Chowk Circulor Road Daska', softWrap: true,))
          ],
        ),
      ],
    );
  }
}