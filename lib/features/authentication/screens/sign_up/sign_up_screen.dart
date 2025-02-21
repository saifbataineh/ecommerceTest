import 'package:ecommerce/common/widgets/login_signup/divider_widget.dart';
import 'package:ecommerce/common/widgets/login_signup/social_logo.dart';
import 'package:ecommerce/features/authentication/screens/sign_up/widgets/sign_up_form.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title,
            Text(
              TTexts.signUpTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ), //form
            SignUpForm(isDark: isDark),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            //Divider
            DividerWidget(
                dividerText: TTexts.orSignUpWith.capitalize!, isDark: isDark),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            const SocialWidget()
          ],
        ),
      ),
    );
  }
}
