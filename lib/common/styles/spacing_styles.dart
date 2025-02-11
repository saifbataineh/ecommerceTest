import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight=EdgeInsets.only(
            top: TSized.appBarHeight,
            left: TSized.defaultSpace,
            bottom: TSized.defaultSpace,
            right: TSized.defaultSpace,
          );
}