import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:my_app/utils/constants/colors.dart';
import 'package:my_app/utils/helpers/helper_functions.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });
  final String text;
  final bool selected;
  final Function(bool?) onSelected;
  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? UColors.white : null),
      shape: isColor ? CircleBorder() : null,
      padding: isColor ? EdgeInsets.zero : null,
      labelPadding: isColor? EdgeInsets.zero: null,
      backgroundColor: isColor ? UHelperFunctions.getColor(text) : null,
      avatar: isColor
          ? UCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: UHelperFunctions.getColor(text)!,
            )
          : null,
    );
  }
}
