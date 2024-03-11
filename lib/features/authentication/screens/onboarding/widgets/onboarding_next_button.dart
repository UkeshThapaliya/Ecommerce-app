import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:rent_onway/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:rent_onway/utils/constants/color.dart";
import "package:rent_onway/utils/constants/sizes.dart";
import "package:rent_onway/utils/device/device_utils.dart";
import "package:rent_onway/utils/helper/helper_fun.dart";

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);

    return Positioned(
      right: ThSize.defaultSpace,
      bottom: ThDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape:const CircleBorder(), backgroundColor:dark? ThColors.primary: Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
      );
  }
}
