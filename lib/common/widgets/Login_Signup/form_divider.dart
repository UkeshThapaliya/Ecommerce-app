import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:rent_onway/common/styles/text_string.dart";
import "package:rent_onway/utils/constants/color.dart";
import "package:rent_onway/utils/helper/helper_fun.dart";

class ThFormDivider extends StatelessWidget {
  const ThFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark? ThColors.darkGrey: ThColors.grey,thickness: 0.5,indent: 60,endIndent: 5)),
        Text(Thtexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium,),
         Flexible(child: Divider(color: dark? ThColors.darkGrey: ThColors.grey,thickness: 0.5,indent: 5,endIndent: 60)),
    
    
      ],
    );
  }
}