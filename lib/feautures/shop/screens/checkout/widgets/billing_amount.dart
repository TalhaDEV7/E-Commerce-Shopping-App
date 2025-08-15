import 'package:flutter/material.dart';
import 'package:my_app/utils/constants/sizes.dart';

class UBillingAmount extends StatelessWidget {
  const UBillingAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
        Row(
       
       children: [
         Expanded(child: Text('subtotal',style: Theme.of(context).textTheme.bodyMedium,)),
         Text('\$343',style: Theme.of(context).textTheme.bodyMedium,)
       ],
     ),
     SizedBox(height: USizes.spaceBtwItems/2,),
     Row(
       
       children: [
         Expanded(child: Text('Shipping fee',style: Theme.of(context).textTheme.bodyMedium,)),
         Text('\$34',style: Theme.of(context).textTheme.labelLarge,)
       ],
     ),
     SizedBox(height: USizes.spaceBtwItems/2,),
     Row(
       
       children: [
         Expanded(child: Text('tax fee',style: Theme.of(context).textTheme.bodyMedium,)),
         Text('\$3',style: Theme.of(context).textTheme.labelLarge,)
       ],
     ),
     SizedBox(height: USizes.spaceBtwItems/2,),
     Row(
       
       children: [
         Expanded(child: Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,)),
         Text('\$3768',style: Theme.of(context).textTheme.titleMedium,)
       ],
     ),
     ],
    );
  }
}
