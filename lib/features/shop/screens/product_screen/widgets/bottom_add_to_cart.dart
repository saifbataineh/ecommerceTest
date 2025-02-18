import 'package:ecommerce/common/widgets/icons/pressed_icon_circular.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkerGrey : AppColors.light,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(AppSizes.cardRadiusLg),
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const PressedCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                color: AppColors.white,
                backgroundColor: AppColors.darkerGrey,
              ),
              const SizedBox(
                width: AppSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: AppSizes.spaceBtwItems,
              ),
              const PressedCircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                color: AppColors.white,
                backgroundColor: AppColors.black,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(AppSizes.md),
                  backgroundColor: AppColors.black,
                  side: const BorderSide(color: AppColors.black)),
              child: const Text('Add To Cart'))
        ],
      ),
    );
  }
}
