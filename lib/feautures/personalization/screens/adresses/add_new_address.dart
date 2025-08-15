import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Add New Address', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      /// body
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              ///Name
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: USizes.spaceBtwInputFields),
              ///Phone number
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: 'Phone number',
                ),
              ),
              SizedBox(height: USizes.spaceBtwInputFields),
              ///street
              Row(children: [
                Expanded(
                  child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.building_31),
                    labelText: 'Street',
                  ),
                                ),
                ),
                SizedBox(width: USizes.spaceBtwInputFields),
              ///Postal code
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.code),
                    labelText: 'Postal Code',
                  ),
                ),
              ),
              
              ],),
              SizedBox(height: USizes.spaceBtwInputFields),
              
              ///city
              Row(children: [
                Expanded(
                  child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.building),
                    labelText: 'City',
                  ),
                                ),
                ),
                SizedBox(width: USizes.spaceBtwInputFields),
              ///state
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.activity),
                    labelText: 'State',
                  ),
                ),
              ),
              ],),
              SizedBox(height: USizes.spaceBtwInputFields),
              ///country
               TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: 'Country',
                ),
              ),
              SizedBox(height: USizes.spaceBtwSections),
              ///save button
              UElevatedButton(onPress: (){}, 
              child: Text('Save'), onPressed: (){})
            ],
          ),
          ),
      ),
    );
  }
}