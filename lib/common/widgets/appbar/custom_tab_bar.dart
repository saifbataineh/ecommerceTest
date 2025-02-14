import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});
  final List<Tab> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: HelperFunctions.isDarkMode(context)
          ? AppColors.black
          : AppColors.white,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          indicatorColor: AppColors.primary,
          labelColor: HelperFunctions.isDarkMode(context)
              ? AppColors.white
              : AppColors.primary,
          unselectedLabelColor: AppColors.darkerGrey,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
