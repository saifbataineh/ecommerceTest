import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/products/ratings/custom_rating_bar.dart';
import 'package:ecommerce/features/shop/screens/product_review/widgets/overall_product_rating.dart';
import 'package:ecommerce/features/shop/screens/product_review/widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Reviews & ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
         padding: const EdgeInsets.all(
            AppSizes.defaultSpace,
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use'),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            //overall Product Ratings
            const OverAllProductRating(),
            const CustomRatingBarIndicator(
              rating: 3.5,
            ),
            Text(
              '12,611',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            //User Reviews list
            const UserReviewCard()
          ],
        ),
      ),
    );
  }
}
