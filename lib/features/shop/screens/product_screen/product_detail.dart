import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_screen/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce/features/shop/screens/product_screen/widgets/product_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_screen/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_screen/widgets/products_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_screen/widgets/rating_and_share.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
      BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
//product image slider
            const ProductImageSlider(),
//product details

            Padding(
              padding: const EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating & sharing
                  const RatingAndShare(),
                  //price title stack & brand,
                  const ProductMetaData(),
                  //attributes
                  const ProductsAttributes(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  //checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  // description
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show More',
                      trimExpandedText: 'Less',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  //reviews
                  const Divider(),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
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
