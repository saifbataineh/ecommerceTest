import 'package:ecommerce/features/authentication/screens/sign_up/verify_email_screen.dart';
import 'package:ecommerce/features/authentication/screens/sign_up/widgets/terms_and_condtiotions_check_box.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(
                width: TSized.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: TSized.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(
            height: TSized.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(
            height: TSized.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(
            height: TSized.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          TermsAndConditionsCheckBox(isDark: isDark),
          //sign up button
          const SizedBox(
            height: TSized.spaceBtwSections,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => VerifyEmailScreen()),
                child: const Text(TTexts.createAccount),
              ))
        ],
      ),
    );
  }
}
