import 'package:ecommerce/features/authentication/controllers/onborading_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboradingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: HelperFunctions.isDarkMode(context)
                ? AppColors.light
                : AppColors.dark,
            dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigatonClick,
        count: 3,
      ),
    );
  }
}
