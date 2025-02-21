import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.user,
                  ),
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.mobile,
                  ),
                  labelText: 'Phone Number ',
                ),
              ),
              SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.building_31,
                        ),
                        labelText: 'Street'),
                  )),
                  SizedBox(
                    width: AppSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.code,
                        ),
                        labelText: 'Postal Code'),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.building,
                        ),
                        labelText: 'City'),
                  )),
                  SizedBox(
                    width: AppSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.activity,
                          ),
                          labelText: 'state'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global), labelText: 'Country'),
              ),
              SizedBox(
                height: AppSizes.defaultSpace,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Save")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
