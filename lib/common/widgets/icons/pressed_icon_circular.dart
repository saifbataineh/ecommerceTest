import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class PressedCircularIcon extends StatelessWidget {
  const PressedCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = AppSizes.lg,
    this.backgroundColor,
    this.color,
    this.onPressed,
    required this.icon,
  });
  final IconData icon;
  final double? width, height, size;
  final Color? backgroundColor, color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : isDark
                ? AppColors.black.withValues(alpha: 0.1)
                : AppColors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
