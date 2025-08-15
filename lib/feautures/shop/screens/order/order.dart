import 'package:flutter/material.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/feautures/shop/screens/order/widgets/orders_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall,),

      ),

      body: Padding(
        padding: UPadding.screenPadding,
        child: UOrdersList(),
        ),
    );
  }
}