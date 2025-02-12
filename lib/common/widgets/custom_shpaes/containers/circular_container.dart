import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.radius = AppSizes.cardRadiusLg,
    this.showBorder = false,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
  });
  final double? width, height;
  final double radius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder?Border.all(color: borderColor):null,
      ),
      child: child,
    );
  }
}
