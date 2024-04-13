
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:rent_onway/common/widgets/images/th_rounded_images.dart';
import 'package:rent_onway/features/rent/controllers/home_controller.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';

class ThPromoSlider extends StatelessWidget {
  const ThPromoSlider({
    super.key, required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => ThRoundedImage(imageUrl: url)).toList(),
          ),
          const SizedBox(height: ThSize.spaceBtwItems),
          Center(
            child: Obx(
              () => Row(
               mainAxisSize: MainAxisSize.min, 
                children: [
                  for(int i =0;i<banners.length; i++ )
                   ThCircularContainer(
                    width: 20,
                    height: 4,
                    margin:const EdgeInsets.only(right:10),
                    backgroundColor: controller.carousalCurrentIndex.value ==i ? ThColors.primary : ThColors.grey,
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}















