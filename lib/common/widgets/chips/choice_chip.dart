import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onselected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onselected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: HelperFunctions.getColor(text) != null
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onselected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: HelperFunctions.getColor(text) != null
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: HelperFunctions.getColor(text)!,
              )
            : null,
        shape: HelperFunctions.getColor(text) != null
            ? const CircleBorder()
            : null,
        backgroundColor: HelperFunctions.getColor(text),
        labelPadding: HelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: HelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        selectedColor: Colors.green,
      ),
    );
  }
}
