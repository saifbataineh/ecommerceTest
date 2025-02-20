import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/products/ratings/custom_rating_bar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.user),
                ),
                const SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                Text('saif bataineh',
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 2),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '01 nOVEMBER 2025',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const ReadMoreText(
          'gnfonwfbn wpbnwbpwo p iqckvwdovwmdvowm fwpovmwopvmwovbnfmbw wpvmwovkw-0vbwrkbm pqeow-ovw-vkw ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        //Review
    
        CircularContainer(
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SAIF\'S Store ',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 Nov, 2023 ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'gnfonwfbn wpbnwbpwo p iqckvwdovwmdvowm fwpovmwopvmwovbnfmbw wpvmwovkw-0vbwrkbm pqeow-ovw-vkw ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
