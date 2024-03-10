import 'package:flutter/material.dart';
import 'package:rent_onway/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top:-1, right: ThSize.defaultSpace,child: TextButton(onPressed: (){},child: const Text('Skip'),));
  }
}
