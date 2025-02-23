import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/icons/pressed_icon_circular.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/prouct_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Checkout\$256.0',
            )),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, index) => const Column(
            children: [
              CartItem(),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    ProductCountitywithAddAndDeleteButton(),
                  ],
                ),
                ProductPriceText(price: '256')
              ]),
            ],
          ),
          itemCount: 4,
          separatorBuilder: (_, __) => const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
        ),
      ),
    );
  }
}
