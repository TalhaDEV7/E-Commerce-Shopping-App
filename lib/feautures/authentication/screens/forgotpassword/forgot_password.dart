import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/feautures/authentication/screens/forgotpassword/reset_password.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///-----Header----
            ///-----Title-----
            Text(UTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwItems/2),
            ///-----subtitle--
            Text(UTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.labelMedium),
            SizedBox(height: USizes.spaceBtwSections*2),
            ///-----form------
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: UTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                SizedBox(height: USizes.spaceBtwItems),
                UElevatedButton(onPress: ()=>Get.to(()=> ResetPassword()), child: Text(UTexts.submit), onPressed: (){},),
              ],
            )
          
          ],
        ),),
      ),
    );
  }
}