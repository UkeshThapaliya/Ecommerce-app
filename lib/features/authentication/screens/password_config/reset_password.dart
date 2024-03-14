import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/styles/text_string.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
      child:  Padding(
        padding: const EdgeInsets.all(ThSize.defaultSpace),
        child: Column(
          children: [
           //Images
           Image(image: const AssetImage(ThImages.deliveredEmailIllu), width: ThHelperFun.screenWidth() *0.6),
           const SizedBox(height: ThSize.spaceBtwSections),

           //Title and SubTiltle
            Text(Thtexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign:TextAlign.center),
            const SizedBox(height: ThSize.spaceBtwItems),
             Text(Thtexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign:TextAlign.center),
            const SizedBox(height: ThSize.spaceBtwSections),

            //Buutons
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text(Thtexts.done)),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){},
                child: const Text(Thtexts.resendEmail),
              ),
            )

          ],
        ),
        ),
    ),
    );
}
}