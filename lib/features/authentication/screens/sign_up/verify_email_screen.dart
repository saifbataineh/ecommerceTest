import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding to give drafult spacing
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(
                  AppImages.deleiveredEmailIllustartion,
                ),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //title & subtitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                "saifbbataineh@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          onPressed: () => Get.to(LoginScreen()),
                          image: AppImages.staticSuccessIllustartion,
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                        )),
                    child: Text(TTexts.continues)),
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
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
