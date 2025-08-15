import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/feautures/personalization/screens/adresses/add_new_address.dart';
import 'package:my_app/feautures/personalization/screens/adresses/widgets/single_address.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //// ---- app bar----
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      //// ----body----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              USingleAddress(isSelected: true),
              SizedBox(height: USizes.spaceBtwItems),
              USingleAddress(isSelected: false),
            ],
          ),
          ),
      ),
      /// floating actiom button
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Get.to(()=>AddNewAddressScreen()),
        backgroundColor: UColors.primary,
        child: Icon(Iconsax.add),
      ),
      
    );
  }
}
