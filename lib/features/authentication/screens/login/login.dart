import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets/social_logo.dart';
import 'package:ecommerce/common/widgets/divider_widget.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/header_login.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/utils/contants/sizes.dart';
import 'package:ecommerce/utils/contants/text_strings.dart';

import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo title &subtitle
              HeaderLoginScreen(isDark: isDark),
              LoginFormWidget(),
              DividerWidget(isDark: isDark,dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(
                height: TSized.spaceBtwSetions,
              ),
              SocialWidget()
            ],
          ),
        ),
      ),
    );
  }
}


