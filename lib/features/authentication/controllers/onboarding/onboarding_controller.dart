import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:rent_onway/features/authentication/screens/login/login.dart";

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; //getx method to define variable which can easily change

  //update the present index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump into nextpage
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll (const LoginScreen());

    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  //Update current index and jump in to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
  
}