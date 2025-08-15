import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/feautures/personalization/screens/adresses/address.dart';
import 'package:my_app/feautures/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:my_app/feautures/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:my_app/feautures/personalization/screens/profile/widgets/user_profle_tile.dart';
import 'package:my_app/feautures/shop/screens/order/order.dart';
import 'package:my_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///--Primary header
          UProfilePrimaryHeader(),
          ///--deatils
        Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              children: [
              ///--User profile details
              UserProfleTile(),
              SizedBox(height: USizes.spaceBtwItems),
              ///--Account settings Heading
              USectionHeading(title: 'account settings', showActionButton: false),
            
              ///---Settings menu tiles
              SettingsMenuTile(icon: Iconsax.safe_home,title: 'My Adresses',subtitle: 'Set Shopping Delivery Adresses',
              onTap: () => Get.to(()=>AddressScreen())),
              SettingsMenuTile(icon: Iconsax.safe_home,title: 'My Cart',subtitle: 'Add, Remove Products and Move to Checkout', 
              onTap: () {  },),
              SettingsMenuTile(icon: Iconsax.safe_home,title: 'My Orders',subtitle: 'In Progress and Completed Orders', 
              onTap: ()=>Get.to(()=>OrderScreen()),),
              SizedBox(height: USizes.spaceBtwSections),
              ///---Logout
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){}, child: Text('Logout'))),
                 SizedBox(height: USizes.spaceBtwSections),
              
              ],
            ),
          ),
        )

        ],
      ),
    );
  }
}
