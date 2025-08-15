import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_app/feautures/personalization/screens/edit_profile/edit_profile.dart';

class UserProfleTile extends StatelessWidget {
  const UserProfleTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
            title: Text('TalhaTariq', style: Theme.of(context).textTheme.headlineMedium),
            subtitle: Text('chohrytalha@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
            trailing: IconButton(onPressed: ()=>
               Get.to(()=>EditProfileScreen()),
            icon: Icon(Iconsax.edit)),
          );
  }
}
