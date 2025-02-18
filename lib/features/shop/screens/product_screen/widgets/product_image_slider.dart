import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/pressed_icon_circular.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
        child: Container(
      color: isDark ? AppColors.darkerGrey : AppColors.light,
      child: Stack(
        children: [
          //main large iamge
          const SizedBox(
            height: 400,
            child: Padding(
              padding:
                  EdgeInsets.all(AppSizes.prouctImageRadius * 2),
              child: Center(
                  child: Image(image: AssetImage(AppImages.product5))),
            ),
          ),
          //Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: AppSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ),
                  itemBuilder: (_, index) => RoundedImage(
                      border: Border.all(color: AppColors.primary),
                      padding: const EdgeInsets.all(AppSizes.sm),
                      backgroundColor:
                          isDark ? AppColors.dark : AppColors.white,
                      width: 80,
                      imageUrl: AppImages.animalIcon)),
            ),
          ),
          //app bar icons
          const CustomAppBar(
            showBackArrow: true,
            actions: [
              PressedCircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    ));
  }
}
