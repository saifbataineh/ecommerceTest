import 'package:ecommerce/common/widgets/icons/pressed_icon_circular.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCountitywithAddAndDeleteButton extends StatelessWidget {
  const ProductCountitywithAddAndDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        //add remove button
        Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PressedCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: HelperFunctions.isDarkMode(context)
              ? AppColors.white
              : AppColors.black,
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? AppColors.darkerGrey
              : AppColors.light,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        PressedCircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: AppSizes.md,
            color: AppColors.white,
            backgroundColor: AppColors.primary),
      ],
    );
  }
}
