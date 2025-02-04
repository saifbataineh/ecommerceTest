import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboradingController extends GetxController {
  static OnboradingController get instance => Get.find();

  ///variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// JUMP to the specefic dot selected page.
  void dotNavigatonClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  ///update Current Index &jump to the next page
  void nextPage() {
    if(currentPageIndex.value==2){
      //Get.to(LoginScreen())
    }else{
      int page=currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  ///update Current Index &jump to the last page
  void skipPage() {
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}
