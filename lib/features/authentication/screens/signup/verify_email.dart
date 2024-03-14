import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/styles/text_string.dart';
import 'package:rent_onway/common/widgets/success_screen/success_screen.dart';
import 'package:rent_onway/features/authentication/screens/login/login.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //Padding to give equal space to all sides in all screen
        child: Padding(
          padding: const EdgeInsets.all(ThSize.defaultSpace),
          child: Column(
            children: [

              //images
              Image(
                image: const AssetImage(ThImages.deliveredEmailIllu),
                width: ThHelperFun.screenWidth() * 0.6,
                ),
              const SizedBox(height: ThSize.spaceBtwSections),

              //Title and subtitle
              Text(Thtexts.conformEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign:TextAlign.center),
                const SizedBox(height: ThSize.spaceBtwItems),
                Text("ukeshthapaliya10@gmail.com",style: Theme.of(context).textTheme.labelLarge,textAlign:TextAlign.center),
                const SizedBox(height: ThSize.spaceBtwItems),
                Text(Thtexts.conformEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign:TextAlign.center),
                const SizedBox(height: ThSize.spaceBtwSections),
            
              //Buttons
              SizedBox(width: double.infinity,
               child: ElevatedButton(
                onPressed: () => Get.to(
                  () => SuccessScreen(
                  image: ThImages.staticSuccessIllu,
                  title: Thtexts.yourAccountCreatedTitle,
                  subTitle: Thtexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                ),
                ),
                 child: const Text(Thtexts.thContinue))
                 ),
              const SizedBox(height: ThSize.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(Thtexts.resendEmail))),



            ],
          ),
        ),
      ),

    );
  }
}