import "package:get/get.dart";

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variables

  //update the present index when page scroll
  void updatePageIndicator(index){}

  //jump to the specific dot selected page
  void dotNavigationClick(index){}

  //update current index and jump into nextpage
  void nextPage(){}

  //Update current index and jump in to the last page
  void skipPage(){}
  
}