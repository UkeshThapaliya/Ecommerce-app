import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/styles/spacing_style.dart';
import 'package:rent_onway/common/styles/text_string.dart';
import 'package:rent_onway/features/authentication/screens/login/login.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle,required this.onPressed });
  final String image, title, subTitle;
  final VoidCallback  onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ThSpacingStyle.paddingWithAppBarHeight *2,
          child: Column(
            children: [
              //Images
               Image(
                image: const AssetImage(ThImages.deliveredEmailIllu),
                width: ThHelperFun.screenWidth() * 0.6,
                ),
              const SizedBox(height: ThSize.spaceBtwSections),

              //Title and subtitle
              Text(Thtexts.yourAccountCreatedTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign:TextAlign.center),
                const SizedBox(height: ThSize.spaceBtwItems),

                Text(Thtexts.yourAccountCreatedSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign:TextAlign.center),
                const SizedBox(height: ThSize.spaceBtwSections),
              
              //buttons
              SizedBox(
                width: double.infinity,
                 child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(Thtexts.thContinue))
                 ),
        
            ],
          ),
          ) ,
          ),
    );
  }
  
  
}