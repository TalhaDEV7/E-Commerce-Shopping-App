import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        USectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        Row(
          children: [
            URoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? UColors.light : UColors.white,
              padding: EdgeInsets.all(USizes.sm),
              child: Image(
                image: AssetImage(UImages.googlePay),
                fit: BoxFit.contain,
              ),
            ),

            /// amount
            ///
            SizedBox(height: USizes.spaceBtwItems / 2),

            ///payment name
            Text('Google Pay', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
