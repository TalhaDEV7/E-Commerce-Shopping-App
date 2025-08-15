import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/feautures/authentication/screens/signup/verify_email.dart';
import 'package:my_app/feautures/authentication/screens/signup/widgets/privacy_policy_check_box.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';

class USignUpForm extends StatelessWidget {
  const USignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///--first&lastname---
        Row(
          children: [
            ///---first-name--
            Expanded(child: TextFormField(
              decoration: InputDecoration(
                labelText: UTexts.firstName,
                prefixIcon: Icon(Iconsax.user)
              ),
            )),
            SizedBox(width: USizes.spaceBtwInputFields),
            ///---last-name---
            Expanded(child: TextFormField(
              decoration: InputDecoration(
                labelText: UTexts.lastName,
                prefixIcon: Icon(Iconsax.user)
              ),
            )),
          ],
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        /// email
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right)
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        /// phone-no.
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call)
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        /// passwordfield
         TextFormField(
              decoration: InputDecoration(
    prefixIcon: Icon(Iconsax.password_check),
    labelText: UTexts.password,
    suffixIcon: Icon(Iconsax.eye),
              ),
            ),
            SizedBox(height: USizes.spaceBtwInputFields/2),
  ///---privacy&policy-checkBox---
            PrivacyPolicyCheckBox(),
    SizedBox(height: USizes.spaceBtwItems),
    ///---Create-Account----
           UElevatedButton(onPress: ()=>Get.to(()=>VerifyEmail()), onPressed: () {  },
           child: Text(UTexts.createAccount),)
      ],
    );
  }
}
