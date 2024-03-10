import "package:flutter/material.dart";
import "package:rent_onway/utils/constants/image_string.dart";
import "package:rent_onway/utils/constants/sizes.dart";
import "package:rent_onway/utils/constants/text_string.dart";
import "package:rent_onway/utils/helper/helper_fun.dart";

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});
  
  @override
  Widget build (BuildContext context){
    return  Scaffold(
      body: Stack(
        children: [
          //horizontal Scroll pages
          PageView(
            children: const [
               OnBoardingPage(
              image: ThImages.onBoardingImage1,
              title: Thtexts.onBoardingSubTitle1,
              subTitle: Thtexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
              image: ThImages.onBoardingImage2,
              title: Thtexts.onBoardingSubTitle2,
              subTitle: Thtexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
              image: ThImages.onBoardingImage3,
              title: Thtexts.onBoardingSubTitle3,
              subTitle: Thtexts.onBoardingSubTitle3,
              ),

            ],

          ),


          //Skip button
          const OnBoardingSkip()

          //dot navigation smoothPagesIndicator

          //Circular Button

        ]    
      ),
    );
  }

}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top:0, right: ThSize.defaultSpace,child: TextButton(onPressed: (){},child: const Text('Skip'),));
  }
}

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