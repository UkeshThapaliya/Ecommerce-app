import "package:flutter/material.dart";
import "package:rent_onway/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:rent_onway/utils/constants/color.dart";
import "package:rent_onway/utils/constants/sizes.dart";
import "package:rent_onway/utils/device/device_utils.dart";
import "package:rent_onway/utils/helper/helper_fun.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = ThHelperFun.isDarkMode(context);
    return Positioned(
      bottom: ThDeviceUtils.getBottomNavigationBarHeight() +25,
      left: ThSize.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect:  ExpandingDotsEffect(activeDotColor: dark ? ThColors.light: ThColors.dark,dotHeight: 6),
      ),
    );
  }
}