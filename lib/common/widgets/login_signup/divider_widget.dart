import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {

  const DividerWidget({
    super.key,
    required this.dividerText,
    required this.isDark,
  });
final String dividerText;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText),
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

