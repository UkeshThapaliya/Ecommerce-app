import "package:flutter/material.dart";
import "package:rent_onway/common/styles/text_string.dart";
import "package:rent_onway/utils/constants/image_string.dart";
import "package:rent_onway/utils/constants/sizes.dart";
import "package:rent_onway/utils/helper/helper_fun.dart";

class ThLoginHeader extends StatelessWidget {
  const ThLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark? ThImages.lightAppLogo : ThImages.darkAppLogo),
        ),
        Text(Thtexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: ThSize.sm),
        Text(Thtexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    
    );
  }
}