import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/images/circular_iamge.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });
  final Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircularContainer(
        padding: EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //icon
            Flexible(
              child: CircularImage(
                image: AppImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: HelperFunctions.isDarkMode(context)
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems / 2,
              //text
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleWithVertifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
