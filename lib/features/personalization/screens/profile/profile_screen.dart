import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/images/circular_iamge.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          showBackArrow: true,
          title: Text('Profile'),
        ),
        body: SingleChildScrollView(
           padding: const EdgeInsets.all(
              AppSizes.defaultSpace,
            ),
          child: Column(
            children: [
              //prfile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: AppImages.user,
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change profile picture',
                      ),
                    ),
                  ],
                ),
              ),
          
              /// Details
              const SizedBox(
                height: AppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
          
              ///--Heading Profile Info
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
          
              ProfileMenu(
                  title: 'Name',
                  value: 'controller.user.value.fullName',
                  onPressed: () {}),
              ProfileMenu(
                title: 'UserName',
                value: 'controller.user.value.username',
                onPressed: () {},
              ),
          
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
          
              ///--Heading Profile Info
              const SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
          
              ProfileMenu(
                title: 'User-ID',
                value: 'controller.user.value.id',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'E-mail',
                value: 'controller.user.value.email',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: 'controller.user.value.phoneNumber',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Date of Birth',
                value: '07/08/2024',
                onPressed: () {},
              ),
          
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
          
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
