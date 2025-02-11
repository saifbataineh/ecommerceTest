import 'package:ecommerce/features/authentication/screens/password_config/password_reset.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PasswordForget extends StatelessWidget {
  const PasswordForget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSized.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: TSized.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: TSized.spaceBtwSections * 2,
            ),
            //text fields
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(
              height: TSized.spaceBtwSections,
            ),
            //submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>Get.off(()=>PasswordReset()), child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
