import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/search_container_custom.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    HomeAppBar(),
                    SizedBox(
                      height: TSized.spaceBtwSections,
                    ),
                    CustomSearchBar(
                      text: "search in Store ",
                    ),
                    SizedBox(
                      height: TSized.spaceBtwSections,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: TSized.defaultSpace),
                      child: Column(
                        children: [
                          //heading
                          SectionHeading(
                            title: 'popular Categories',
                            showActionButton: false,
                            textColor: TColors.white,
                          ),
                          SizedBox(
                            height: TSized.spaceBtwItems,
                          ),
                          //categories
                          HomeCategoriesHorizontal(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSized.defaultSpace),
              child: HomeSlider(
                banners: [
                  TImages.banner1,
                  TImages.banner2,
                  TImages.banner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
