import "package:flutter/material.dart";
import "package:rent_onway/utils/constants/image_string.dart";
import "package:rent_onway/utils/constants/sizes.dart";
import "../../../utils/constants/color.dart";

class ThSocialButtons extends StatelessWidget {
  const ThSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: ThColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: ThSize.iconMd,
              height: ThSize.iconMd,
              image: AssetImage(ThImages.google),
            ),
          ),
        ),
        const SizedBox(width: ThSize.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: ThColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: ThSize.iconMd,
              height: ThSize.iconMd,
              image: AssetImage(ThImages.facebook),
            ),
          ),
        ),
    
      ],
    );
  }
}
