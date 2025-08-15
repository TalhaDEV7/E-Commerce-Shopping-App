import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/feautures/authentication/screens/forgotpassword/forgot_password.dart';
import 'package:my_app/feautures/authentication/screens/signup/sign_up.dart';
import 'package:my_app/navigation_menu.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //email field
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        //password field
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),
        //remember me && forgot password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //remember me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(UTexts.rememberMe),
              ],
            ),
            //forgot password
            TextButton(
              onPressed: () => Get.to(()=> ForgotPassword()),
              child: Text(UTexts.forgetPassword),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwSections),
        //Sign in
        UElevatedButton( 
        onPress: ()=> Get.to(()=>NavigationMenu()),
        
        onPressed: () {  },
        child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwItems / 2),
        //create account
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: ()=> Get.to(()=>SignUp()),
            child: Text(UTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
