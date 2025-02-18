import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets/login_signup/social_logo.dart';
import 'package:ecommerce/common/widgets/login_signup/divider_widget.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/header_login.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';

import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo title &subtitle
              HeaderLoginScreen(isDark: isDark),
              const LoginFormWidget(),
              DividerWidget(
                isDark: isDark,
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const SocialWidget()
            ],
          ),
        ),
      ),
    );
  }
}
