import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBackground = true,
      this.showBorder = true,
      this.onTap,
      this.padding =
          const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace)});
  final VoidCallback? onTap;
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? isDark
                      ? AppColors.dark
                      : AppColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(
                AppSizes.cardRadiusLg,
              ),
              border: showBorder ? Border.all(color: AppColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: isDark ? AppColors.darkerGrey : AppColors.grey,
              ),
              SizedBox(
                width: AppSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
