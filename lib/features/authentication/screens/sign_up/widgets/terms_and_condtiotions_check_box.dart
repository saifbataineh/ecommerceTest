import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Flexible(
          child: Text.rich(
            softWrap: true, // Allow wrapping of the text
            overflow: TextOverflow.visible,
            TextSpan(
              children: [
                TextSpan(
                    text: ' ${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? AppColors.white : AppColors.primary,
                        decorationColor:
                            isDark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline)),
                TextSpan(
                    text: ' ${TTexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: TTexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? AppColors.white : AppColors.primary,
                        decorationColor:
                            isDark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
