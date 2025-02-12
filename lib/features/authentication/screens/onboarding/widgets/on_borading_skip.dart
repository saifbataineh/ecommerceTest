import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoradingSkip extends StatelessWidget {
  const OnBoradingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: OnboradingController.instance.skipPage,
        child: const Text(
          "Skip",
        ),
      ),
    );
  }
}
