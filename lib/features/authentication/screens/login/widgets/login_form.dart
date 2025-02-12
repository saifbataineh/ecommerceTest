import 'package:ecommerce/features/authentication/screens/password_config/password_forget.dart';
import 'package:ecommerce/features/authentication/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          spacing: AppSizes.defaultSpace,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(
              height: AppSizes.defaultSpace,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remeber me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe)
                  ],
                ),
                //forgetPassword
                TextButton(
                    onPressed: () => Get.to(() => PasswordForget()),
                    child: Text(TTexts.forgetPassword))
              ],
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => NavigationMenu()),
                    child: Text(TTexts.signIn))),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
