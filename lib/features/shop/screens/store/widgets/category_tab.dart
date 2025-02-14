import 'package:ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          //brands
          BrandsShowCase(
            images: [
              AppImages.product3,
              AppImages.product2,
              AppImages.product5,
            ],
          ),
          // products
        ],
      ),
    );
  }
}
