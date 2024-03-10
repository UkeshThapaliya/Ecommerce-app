import 'package:flutter/material.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });
  
  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ThSize.defaultSpace),
      child: Column(
        children: [
          Image(
            width: ThHelperFun.screenWidth() * 0.8 , //80% of width in screen
            height: ThHelperFun.screenHeight() *0.6,
            image:  AssetImage(image),
          ),
          Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
          const SizedBox(height: ThSize.spaceBtwItems),
          Text(subTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
        ],
      ),
    );
  }
}