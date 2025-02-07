import 'package:ecommerce/common/widgets/login_signup/divider_widget.dart';
import 'package:ecommerce/common/widgets/login_signup/social_logo.dart';
import 'package:ecommerce/features/authentication/screens/sign_up/widgets/sign_up_form.dart';

import 'package:ecommerce/utils/contants/sizes.dart';
import 'package:ecommerce/utils/contants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSized.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title,
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSized.spaceBtwSetions,
              ), //form
              SignUpForm(isDark: isDark),
              SizedBox(
                height: TSized.spaceBtwItems,
              ), 
              //Divider
              DividerWidget(
                  dividerText: TTexts.orSignUpWith.capitalize!, isDark: isDark),
              SizedBox(
                height: TSized.spaceBtwSetions,
              ),
              const SocialWidget()
            ],
          ),
        ),
      ),
    );
  }
}
