import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/products/cart_menu_item.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.white),
          ),
        ],
      ),
      actions: [CountCounterIcon(onPressed: () {}, iconColor: AppColors.white)],
    );
  }
}
