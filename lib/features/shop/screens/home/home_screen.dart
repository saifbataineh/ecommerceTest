import 'package:ecommerce/common/widgets/custom_shpaes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/search_container_custom.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_carousel.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';

import 'package:ecommerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  CustomSearchBar(
                    text: "search in Store ",
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        SectionHeading(
                          title: 'popular Categories',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        //categories
                        HomeCategoriesHorizontal(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: HomeSlider(
                banners: [
                  AppImages.banner1,
                  AppImages.banner2,
                  AppImages.banner3,
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            SectionHeading(
              title: ' Popular Products',
              onPressed: () {},
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            GridViewCustomProducts(
              itemBuilder: (context, index) => ProductCardVertical(),
              itemCount: 4,
            )
          ],
        ),
      ),
    );
  }
}
