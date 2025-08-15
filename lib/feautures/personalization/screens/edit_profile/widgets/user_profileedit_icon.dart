import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/common/widgets/icons/circular_icon.dart';
import 'package:my_app/common/widgets/images/user_profile_logo.dart';

class UserProfileeditIcon extends StatelessWidget {
  const UserProfileeditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// user profile logo
        Center(child: UserProfileLogo()),
        /// edit icon
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: UCircularIcon(icon: Iconsax.edit)),
      ],
    );
  }
}