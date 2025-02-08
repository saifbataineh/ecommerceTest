import 'package:ecommerce/utils/contants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 400,
    this.child,
    this.backgroundColor = TColors.white,
  });
  final double? width, height;
  final double radius, padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: TColors.textWhite.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(400),
      ),
      child: child,
    );
  }
}