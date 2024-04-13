import 'package:flutter/material.dart';
import 'package:rent_onway/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:rent_onway/utils/constants/image_string.dart';

class ThHomeCategories extends StatelessWidget {
  const ThHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
         return ThverticalImageText(
          image: ThImages.footWear,
          title: 'FootWear',
          onTap: (){},
          );
        },
    ),
    );
  }
}
