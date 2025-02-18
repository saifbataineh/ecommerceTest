import 'package:ecommerce/features/personalization/screens/settings/settings_screen.dart';
import 'package:ecommerce/features/shop/screens/home/home_screen.dart';
import 'package:ecommerce/features/shop/screens/store/store.dart';
import 'package:ecommerce/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            destinations: [
              const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              const NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ],
            backgroundColor: isDark ? AppColors.black : AppColors.white,
            indicatorColor: isDark
                ? AppColors.white.withValues(alpha: 0.1)
                : AppColors.black.withValues(alpha: 0.1)),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const Wishlist(),
    const SettingsScreen()
  ];
}
