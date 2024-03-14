import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:rent_onway/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:rent_onway/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart";
import "package:rent_onway/features/authentication/screens/onboarding/widgets/onboarding_page.dart";
import "package:rent_onway/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:rent_onway/utils/constants/image_string.dart";
import "package:rent_onway/utils/constants/text_string.dart";
import "widgets/onboarding_dot_navigation.dart";

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});
  
  @override
  Widget build (BuildContext context){
    final controller = Get.put(OnBoardingController());
    return  Scaffold(
      body: Stack(
        children: [
          //horizontal Scroll pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
               OnBoardingPage(
              image: ThImages.onBoardingImage1,
              title: Thtexts.onBoardingTitle1,
              subTitle: Thtexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
              image: ThImages.onBoardingImage2,
              title: Thtexts.onBoardingTitle2,
              subTitle: Thtexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
              image: ThImages.onBoardingImage3,
              title: Thtexts.onBoardingTitle3,
              subTitle: Thtexts.onBoardingSubTitle3,
              ),

            ],

          ),           


          //Skip button
          const OnBoardingSkip(),

          //dot navigation smoothPagesIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),

        ]    
      ),
    );
  }

}




