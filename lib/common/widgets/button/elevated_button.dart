import 'package:flutter/material.dart';
import 'package:my_app/utils/helpers/device_helpers.dart';

class UElevatedButton extends StatelessWidget {
  const UElevatedButton({
    super.key,
    required this.onPress,
    required this.child, required Null Function() onPressed,
  });
  final VoidCallback onPress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UDeviceHelper.getScreenWidth(context),
      child: ElevatedButton(onPressed: onPress, child: child),
    );
  }
}
