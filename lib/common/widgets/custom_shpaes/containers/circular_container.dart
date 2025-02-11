import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 400,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
  });
  final double? width, height;
  final double radius, padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(400),
      ),
      child: child,
    );
  }
}
