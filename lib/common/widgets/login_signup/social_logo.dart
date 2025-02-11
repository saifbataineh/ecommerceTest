// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';

class SocialWidget extends StatelessWidget {
 
  const SocialWidget({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: TSized.spaceBtwItems,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: TSized.iconMd,
                  height: TSized.iconMd,
                  image: AssetImage(TImages.google))),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSized.iconMd,
              height: TSized.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
