import 'package:flutter/material.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/button/social_buttons.dart';
import 'package:my_app/common/widgets/login_signup/form_divider.dart';
import 'package:my_app/feautures/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            /// ---header-----
            Text(UTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: USizes.spaceBtwSections),
            /// ---form-------
            USignUpForm(),
            SizedBox(height: USizes.spaceBtwSections),
            /// ---divider----
            UFormDivider(title: UTexts.orSignupWith),
            SizedBox(height: USizes.spaceBtwSections),
            /// ---footer-----
            USocialButtons(),
          ],

        ),),
      ),
    );
  }
}
