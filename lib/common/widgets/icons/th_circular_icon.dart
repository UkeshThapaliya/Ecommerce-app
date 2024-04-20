import 'package:flutter/material.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThCircularIcon extends StatelessWidget {
  /// A custom Circular Icon widget with a background color. ///
  /// Properties are:
  /// Container [width], [height], & [backgroundColor].
  ///
  /// Icon's [size], [color] & [onPressed]
  const ThCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = ThSize.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : ThHelperFun.isDarkMode(context)
                ? ThColors.black.withOpacity(0.9)
                : ThColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
