import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/device/device_utils.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThSearchContainer extends StatelessWidget {
  const ThSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ThSize.defaultSpace),
        child: Container(
          width: ThDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(ThSize.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? ThColors.dark
                    : ThColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(ThSize.cardRadiusLg),
            border: showBorder ? Border.all(color: ThColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: ThColors.darkerGrey),
              const SizedBox(width: ThSize.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
