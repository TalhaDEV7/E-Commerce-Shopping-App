import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/button/elevated_button.dart';
import 'package:my_app/common/widgets/screens/success_screen.dart';
import 'package:my_app/feautures/authentication/screens/login/login.dart';
import 'package:my_app/utils/constants/images.dart';
import 'package:my_app/utils/constants/sizes.dart';
import 'package:my_app/utils/constants/texts.dart';
import 'package:my_app/utils/helpers/device_helpers.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions:[
          IconButton(onPressed:()=> Get.offAll(()=>LoginScreen()), icon: Icon(Icons.clear))
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
            ///---Image---
            Image.asset(UImages.mailSentImage, height: UDeviceHelper.getScreenWidth(context)*0.6),
            SizedBox(height: USizes.spaceBtwItems),
            ///---title---
            Text(UTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwItems),
            ///---email---
            Text('chodhrytalha@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwItems),
            ///---subtitle---
            Text(UTexts.verifyEmailSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
            SizedBox(height: USizes.spaceBtwItems),
            ///---Continue---
            UElevatedButton(onPress: ()=>(()=>SuccessScreen(
              title: UTexts.accountCreatedTitle,
              subtitle: UTexts.accountCreatedSubTitle, 
              image: UImages.accountCreatedImage,
              onTap: () {  },)), child: Text(UTexts.uContinue), onPressed: (){}),
            ///---resend-email---
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: Text(UTexts.resendEmail))),

            ],
          ),),
      ),
    );
  }
}