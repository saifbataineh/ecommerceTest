import 'package:ecommerce/common/styles/shadow_style.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/icons/pressed_icon_circular.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/prouct_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.prouctImageRadius),
          color: isDark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //thumbNail,wishList,button,discount tag
            CircularContainer(
              width: 130,
              height: 100,
              padding: EdgeInsets.all(AppSizes.sm),
              backgroundColor: isDark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //THUMBNAIL Image
                  RoundedImage(
                    backgroundColor: Colors.transparent,
                    imageUrl: TImages.product1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: CircularContainer(
                      radius: AppSizes.sm,
                      backgroundColor: TColors.secondary.withValues(alpha: 0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  //favorite IconButton
                  Positioned(
                    top: 0,
                    right: 0,
                    child: PressedCircularIcon(
                      isDark: isDark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.spaceBtwSections / 2,
            )
            //details
            ,
            Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "white watch small size",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: AppSizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: AppSizes.iconXs,
                      )
                    ],
                  ),
                  /*    Spacer(), */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductPriceText(
                        price: '35.5',
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              AppSizes.cardRadiusMd,
                            ),
                            bottomRight: Radius.circular(
                              AppSizes.prouctImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: AppSizes.iconLg * 1.2,
                          height: AppSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
