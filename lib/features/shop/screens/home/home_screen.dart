import 'package:ecommerce/common/widgets/appbar/custom_app_bar.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/curved_edges/curved_edges.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/products/cart_menu_item.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce/utils/contants/colors.dart';
import 'package:ecommerce/utils/contants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shpaes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        PrimaryHeaderContainer(
          child: Column(
            children: [HomeAppBar()],
          ),
        )
      ],
    )));
  }
}
