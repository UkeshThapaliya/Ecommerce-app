import 'package:flutter/material.dart';
import 'package:rent_onway/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/device/device_utils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: ThDeviceUtils.getAppBarHeight(), 
    right: ThSize.defaultSpace,
    child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(),
    child: const Text('Skip'),
    )
    );
  }
}
