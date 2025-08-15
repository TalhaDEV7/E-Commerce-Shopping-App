import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/feautures/shop/screens/cart/widgets/cart_items.dart';
import 'package:my_app/feautures/shop/screens/checkout/checkout.dart';
import 'package:my_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
return Scaffold(
appBar: UAppBar(
showBackArrow: true,
title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
),
body: Padding(
    padding: UPadding.screenPadding,
        child: UCartItems(),
      ),
//// bottom naviagtion
  bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(USizes.defaultSpace),
    child: UElevatedButton( onPressed: () {  },
    onPress: () =>Get.to(()=>CheckoutScreen()),
    child: Text('Checkout \$263527'), ),
  ), 

    );
  }
}
