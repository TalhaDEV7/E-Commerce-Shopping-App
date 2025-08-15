import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:my_app/common/widgets/screens/success_screen.dart';
import 'package:my_app/common/widgets/texts/promo_code_field.dart';
import 'package:my_app/feautures/shop/screens/cart/widgets/cart_items.dart';
import 'package:my_app/feautures/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:my_app/feautures/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:my_app/feautures/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:my_app/navigation_menu.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: 
        Text('Order Review',style: Theme.of(context).textTheme.headlineSmall,),),
    body: SingleChildScrollView(
      child: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          children: [
            // list of items
            UCartItems(showAddRemoveButtons: false,),
            SizedBox(height:USizes.spaceBtwSections),
            //promo code--text field
            UPromoCodeField(),
            SizedBox(height: USizes.spaceBtwSections,),

            //billing amount

            URoundedContainer(
              showBorder: true,
              padding: EdgeInsets.all(USizes.md),
              backgroundColor: Colors.transparent,
              child: Column(
                
                children: [
                /// amount
                 UBillingAmount(),
                 SizedBox(height: USizes.spaceBtwItems/2,),
                /// payment section
                 UBillingPaymentSection(),

                 UBillingAddressSection(),
                ],
              ),
            )
          ],
        ),
      ),
    ),
   
    bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(USizes.defaultSpace),
    child: UElevatedButton( onPressed: () {  },
    onPress: () =>Get.to(()=>SuccessScreen(title: 'Payment Success',
    subtitle: 'Your Package will be shipped soon', image: UImages.successfulPaymentIcon, 
    onTap: ()=> Get.offAll(()=>NavigationMenu()))),
    child: Text('Checkout \$263527'), ),
  ), 
    );
  }
}
