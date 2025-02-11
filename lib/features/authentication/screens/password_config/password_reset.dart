import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSized.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(
                  TImages.deleiveredEmailIllustartion,
                ),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              SizedBox(
                height: TSized.spaceBtwSections,
              ),

              //title & subtitle
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSized.spaceBtwItems,
              ),

              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSized.spaceBtwSections,
              ),

              //buttons
              SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text(TTexts.done)),
              ),
              SizedBox(
                height: TSized.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
