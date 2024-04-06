import 'package:flutter/material.dart';
import 'package:rent_onway/common/styles/text_string.dart';
import 'package:rent_onway/common/widgets/appbar/appbar.dart';
import 'package:rent_onway/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:rent_onway/utils/constants/color.dart';

class ThHomeAppBar extends StatelessWidget {
  const ThHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThAppBar(title: Column(
      children: [
        Text(Thtexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: ThColors.grey)),
        Text(Thtexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: ThColors.white)),
      ],
      ),
      actions: [
       ThCartCounterIcon(onPressed: () {  }, iconColor: ThColors.white,)
      ],
      );
  }
}