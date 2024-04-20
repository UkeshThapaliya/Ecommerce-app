import 'package:flutter/material.dart';
import 'package:rent_onway/common/styles/shadows.dart';
import 'package:rent_onway/common/widgets/images/th_rounded_images.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/rounded_container.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThProductCardVertical extends StatelessWidget{
  const ThProductCardVertical ({super.key});

  @override
  Widget build(BuildContext context){
    final dark = ThHelperFun.isDarkMode(context);
    //container with side padding, color, edges, radius and shadow
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ThShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ThSize.productImageRadius),
        color: dark? ThColors.darkerGrey: ThColors.white,
      ),
      child: Column(
        children: [
          //thumbnailm, whishlist, discount tag
          ThRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all (ThSize.sm),
            backgroundColor: dark ? ThColors.dark : ThColors.light,
            child: const Stack(
              children: [
                // -- Thumnail image
                ThRoundedImage(imageUrl: ThImages.productImage1, applyImageRadius: true,)
              ]
            ),
          )
        ]
      ),
    );
  }
}