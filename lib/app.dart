import 'package:ecommerce/features/authentication/screens/onboarding/onborading.dart';
import 'package:ecommerce/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      title: 'ecommerce',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnboradingScreen(),
    );
  }
}

