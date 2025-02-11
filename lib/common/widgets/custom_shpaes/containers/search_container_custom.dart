import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true, this.onTap,
  });
  final VoidCallback? onTap;
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSized.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(TSized.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? isDark
                      ? TColors.dark
                      : TColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(
                TSized.cardRadiusLg,
              ),
              border: showBorder ? Border.all(color: TColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.grey,
              ),
              SizedBox(
                width: TSized.spaceBtwItems,
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
