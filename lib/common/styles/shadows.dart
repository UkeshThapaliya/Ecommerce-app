
import 'package:flutter/material.dart';
import 'package:rent_onway/utils/constants/color.dart';

class TShadowStyle {
static final verticalProductShadow = BoxShadow(
   color: ThColors.darkGrey.withOpacity(0.1),
   blurRadius:50,
   spreadRadius: 7,
   offset: const Offset(0, 2)
); // BoxShadow

static final horizontalProductShadow = BoxShadow( 
color: ThColors.darkGrey.withOpacity (0.1),
blurRadius: 50,
spreadRadius: 7,
offset: const Offset(0, 2)
); // BoxShadow
}