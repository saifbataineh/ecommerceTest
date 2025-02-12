import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_function.dart';

class HorizontalImageText extends StatelessWidget {
  const HorizontalImageText({
    super.key,
    required this.onTap,
    this.backgroundColor,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
  });

  final void Function()? onTap;
  final Color? backgroundColor;
  final String image;
  final String title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            //circular icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (HelperFunction.isDarkMode(context)
                        ? TColors.black
                        : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: (HelperFunction.isDarkMode(context)
                      ? TColors.light
                      : TColors.dark),
                ),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
