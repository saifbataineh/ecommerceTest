import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/prouct_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductsAttributes extends StatelessWidget {
  const ProductsAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Seleted attribute pricing & description
        CircularContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: 'variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),
                          const ProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),

                  //actual price

                  //sale price
                ],
              ),
              //variation description
              const ProductTitleText(
                title:
                    'This is the description of the Product and it can be upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        //attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Color',
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                CustomChoiceChip(
                  text: 'Green',
                  selected: true,
                  onselected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Red',
                  selected: false,
                  onselected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Pink',
                  selected: false,
                  onselected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'Eu 34',
                  selected: true,
                  onselected: (value) {},
                ),
                CustomChoiceChip(
                  onselected: (value) {},
                  text: 'Eu 45',
                  selected: false,
                ),
                CustomChoiceChip(
                  onselected: (value) {},
                  text: 'Eu 66',
                  selected: false,
                ),
                CustomChoiceChip(
                  text: 'Eu 34',
                  selected: true,
                  onselected: (value) {},
                ),
                CustomChoiceChip(
                  onselected: (value) {},
                  text: 'Eu 45',
                  selected: false,
                ),
                CustomChoiceChip(
                  onselected: (value) {},
                  text: 'Eu 66',
                  selected: false,
                ),
                CustomChoiceChip(
                  text: 'Eu 34',
                  selected: true,
                  onselected: (value) {},
                ),
                CustomChoiceChip(
                  onselected: (value) {},
                  text: 'Eu 45',
                  selected: false,
                ),
                CustomChoiceChip(
                  onselected: (value) {},
                  text: 'Eu 66',
                  selected: false,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
