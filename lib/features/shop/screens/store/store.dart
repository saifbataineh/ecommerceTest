import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/appbar/custom_tab_bar.dart';
import 'package:ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/search_container_custom.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_item.dart';
import 'package:ecommerce/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: CustomAppBar(
            title: Text(
              'store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [CountCounterIcon()],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScroller) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: HelperFunctions.isDarkMode(context)
                        ? AppColors.black
                        : AppColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(AppSizes.defaultSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          //search bar
                          const SizedBox(
                            height: AppSizes.spaceBtwItems,
                          ),
                          const CustomSearchBar(
                            padding: EdgeInsets.zero,
                            showBackground: false,
                            text: 'Search in store',
                            showBorder: true,
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBtwSections,
                          ),
                          //featured brands
                          SectionHeading(
                            title: 'Featured brands',
                            showActionButton: true,
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBtwItems / 1.5,
                          ),
                          GridViewCustomProducts(
                              mainAxisExtent: 80,
                              itemCount: 4,
                              itemBuilder: (_, index) {
                                return const BrandCard(
                                  showBorder: true,
                                );
                              })
                        ],
                      ),
                    ),
                    //tabs
                    bottom: const CustomTabBar(tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Clothes'),
                      ),
                      Tab(
                        child: Text('Cosmetics'),
                      ),
                    ])),
              ];
            },
            body: const TabBarView(children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ]),
          ),
        ));
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //brands
              const BrandsShowCase(
                images: [
                  AppImages.product3,
                  AppImages.product2,
                  AppImages.product5,
                ],
              ),
              // products
              SectionHeading(
                title: ' you might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              GridViewCustomProducts(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical()),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              )
            ],
          ),
        ),
      ],
    );
  }
}
