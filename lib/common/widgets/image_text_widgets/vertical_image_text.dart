import 'package:flutter/material.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThverticalImageText extends StatelessWidget {
  const ThverticalImageText({
    super.key,
     required this.image,
      required this.title,
       this.textColor = ThColors.white,
        this.backgroundColor = ThColors.white,
         this.onTap,
  });
  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ThSize.spaceBtwItems),
        child: Column(
           children: [
             //circular icon
             Container(
               width: 56,
               height: 56,
               padding: const EdgeInsets.all(ThSize.sm),
               decoration: BoxDecoration(
               color: backgroundColor ?? (dark ?  ThColors.black : ThColors.white),
               borderRadius: BorderRadius.circular(100),
               ),
               child: Center(
                 child: Image(image: AssetImage(image),fit: BoxFit.cover,color: dark ?  ThColors.light : ThColors.dark),
                 ),
               ) ,
            
        
             //Text 
             const SizedBox(height:ThSize.spaceBtwItems /2),
             SizedBox(width: 55,
              child: Text(title,
               style: Theme.of(context).textTheme.labelMedium!.apply(color: backgroundColor),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
               ),
               ),
           ],
            ),
         ),
      );
  }
}
