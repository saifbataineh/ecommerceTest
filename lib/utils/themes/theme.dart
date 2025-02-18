import 'package:ecommerce/utils/themes/custome_themes/app_bar_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/check_box_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/chip_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/elevated_button_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/outlined_button_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/text_field_theme.dart';
import 'package:ecommerce/utils/themes/custome_themes/text_themes.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      chipTheme: TChipTheme.lightChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutLinedButton,
      inputDecorationTheme: TTextFieldTheme.darktInputDeorationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: const Color(0xff272727),
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      chipTheme: TChipTheme.darkChipTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutLinedButton,
      inputDecorationTheme: TTextFieldTheme.darktInputDeorationTheme);
}
