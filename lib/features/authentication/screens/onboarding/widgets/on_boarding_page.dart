import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';



class OnBoradingPage extends StatelessWidget {
   const OnBoradingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSized.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: THelperFunction.screenWidth() * 0.8,
            height: THelperFunction.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSized.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
