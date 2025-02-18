import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/images/circular_iamge.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/prouct_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price and sale price,
        Row(
          children: [
            //sale tag
            CircularContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),

            //price
            Text(
              '\$255',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        //title
        const ProductTitleText(
          title: 'Green nike  sport SHIRT',
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        //stack status
        Row(
          children: [
            const ProductTitleText(
              title: 'status',
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              'iN STOCK',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        //brand

        Row(
          children: [
            CircularImage(
                width: 32,
                height: 32,
                overlayColor: isDark ? AppColors.white : AppColors.black,
                image: AppImages.shoeIcon),
            const BrandTitleWithVertifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
