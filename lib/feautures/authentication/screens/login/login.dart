import 'package:flutter/material.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/button/social_buttons.dart';
import 'package:my_app/common/widgets/login_signup/form_divider.dart';
import 'package:my_app/feautures/authentication/screens/login/widgets/u_login_form.dart';
import 'package:my_app/feautures/authentication/screens/login/widgets/u_login_header.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // header
              // title && subtitle
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),
        
              //form
              ULoginForm(),
              SizedBox(height: USizes.spaceBtwSections),
              //divider
              UFormDivider( title: UTexts.orSignInWith,),
              SizedBox(height: USizes.spaceBtwSections),
              //footer
              //social buttons
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
