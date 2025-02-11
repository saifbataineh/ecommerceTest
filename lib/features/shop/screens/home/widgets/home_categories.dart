import 'package:ecommerce/common/widgets/common_widget/vertical_image_text.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:flutter/material.dart';

class HomeCategoriesHorizontal extends StatelessWidget {
  const HomeCategoriesHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return HorizontalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () {},
              textColor: Colors.black,
            );
          }),
    );
  }
}
