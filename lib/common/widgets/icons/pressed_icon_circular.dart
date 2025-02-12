import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PressedCircularIcon extends StatelessWidget {
  const PressedCircularIcon({
    super.key,
    required this.isDark,
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
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : isDark
                ? TColors.black.withValues(alpha: 0.1)
                : TColors.white.withValues(alpha: 0.1),
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
