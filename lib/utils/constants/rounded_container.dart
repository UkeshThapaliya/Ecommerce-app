
import 'package:flutter/material.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';

class ThRoundedContainer extends StatelessWidget {
const ThRoundedContainer({
super.key,
this.child,
this.width,
this.height,
this.margin,
this.padding,
this.showBorder = false,
this.radius = ThSize.cardRadiusLg,
this.backgroundColor = ThColors.white, 
this.borderColor = ThColors.borderPrimary,

});
final double? width;
final double? height;
final double radius;
final Widget? child;
final bool showBorder;
final Color borderColor;
final Color backgroundColor;
final EdgeInsetsGeometry? padding;
final EdgeInsetsGeometry? margin;

@override
Widget build(BuildContext context) {
  return Container(
   width: width,
   height: height,
   padding: padding,
   margin: margin,
   decoration: BoxDecoration(
     color: backgroundColor,
     borderRadius: BorderRadius.circular(radius),
     border: showBorder? Border.all(color: borderColor): null, 
   ), 
   
  child: child,
  );
}
}