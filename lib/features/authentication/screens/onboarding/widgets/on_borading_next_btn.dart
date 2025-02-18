import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoradingNextBtn extends StatelessWidget {
  const OnBoradingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: OnboradingController.instance.nextPage,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: HelperFunctions.isDarkMode(context)
                  ? AppColors.primary
                  : AppColors.black,
            ),
            child: const Icon(
              Iconsax.arrow_right_3,
            )));
  }
}
