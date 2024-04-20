import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/common/styles/shadows.dart';
import 'package:rent_onway/common/widgets/icons/th_circular_icon.dart';
import 'package:rent_onway/common/widgets/images/th_rounded_images.dart';
import 'package:rent_onway/common/widgets/texts/product_price_text.dart';
import 'package:rent_onway/common/widgets/texts/product_titlle_text.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/rounded_container.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThProductCardVertical extends StatelessWidget {
  const ThProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);

    //container with side padding, color, edges, radius and shadowss
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ThShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ThSize.productImageRadius),
          color: dark ? ThColors.darkerGrey : ThColors.white,
        ),
        child: Column(
          children: [
            //thumbnailm, whishlist, discount tag
            ThRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ThSize.sm),
              backgroundColor: dark ? ThColors.dark : ThColors.light,
              child: Stack(children: [
                // -- Thumnail image
                const ThRoundedImage(
                  imageUrl: ThImages.productImage1,
                  applyImageRadius: true,
                ),

                //- Sale Tag
                Positioned(
                  top: 12,
                  child: ThRoundedContainer(
                    radius: ThSize.sm,
                    backgroundColor: ThColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: ThSize.sm, vertical: ThSize.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: ThColors.black)),
                  ),
                ),

                //- Fav Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: ThCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ]),
            ),
            const SizedBox(height: ThSize.spaceBtwItems / 2),

            ///-- Details
            Padding(
              padding: const EdgeInsets.only(left: ThSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ThProductTitleText(
                      title: 'Adidas Mahomes Shoes', smallSize: true),
                  const SizedBox(height: ThSize.spaceBtwItems / 2),
                  Row(children: [
                    Text('Adidas',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(width: ThSize.xs),
                    const Icon(Iconsax.verify5,
                        color: ThColors.primary, size: ThSize.iconXs),
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Price
                        const ThProductPriceText(
                          price: '15.0',
                          isLarge: true,
                        ),
                        //Add to cart Button
                        Container(
                          decoration: const BoxDecoration(
                            color: ThColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(ThSize.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(ThSize.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: ThSize.iconLg * 1.2,
                            height: ThSize.iconLg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: ThColors.white)),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
