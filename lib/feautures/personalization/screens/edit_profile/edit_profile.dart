import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/styles/padding.dart';
import 'package:my_app/common/widgets/appbar/app_bar.dart';
import 'package:my_app/common/widgets/texts/u_section_heading.dart';
import 'package:my_app/feautures/personalization/screens/edit_profile/widgets/user_profileedit_icon.dart';
import 'package:my_app/utils/constants/sizes.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// user profile with edit icon
              UserProfileeditIcon(),
              SizedBox(height: USizes.spaceBtwSections),

              /// divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// Account Settings Heding
              USectionHeading(title: 'Account Settings', showActionButton: false,),
              SizedBox(height: USizes.spaceBtwItems),

              /// account details
              UserDeatilRow(title: 'Name', value: 'talha tariq', onTap: () {},),
              UserDeatilRow(title: 'Username', value: 'talhatariq7',onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),

              /// divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// profiile section heading
              USectionHeading(title: 'Profile Settings', showActionButton: false,),
              SizedBox(height: USizes.spaceBtwItems),

              /// profile settings
              UserDeatilRow(title: 'User ID', value: '12345', onTap: () {},),
              UserDeatilRow(title: 'Email', value: 'chodhrytalha@gmail.com',onTap: () {}),
              UserDeatilRow(title: 'Phone Number', value: '+923091542672', onTap: () {},),
              UserDeatilRow(title: 'Gender', value: 'Male',onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),

              /// divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              TextButton(
              onPressed: (){}, 
              child: Text('Close Account', style: TextStyle(color: Colors.red),)),
            ],
          ),
        ),
      ),
    );
  }
}
class UserDeatilRow extends StatelessWidget {
  const UserDeatilRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34, 
    required this.onTap,
  });
  final String title, value;
  final IconData icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: USizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(icon, size: USizes.iconSm)),
          ],
        ),
      ),
    );
  }
}
