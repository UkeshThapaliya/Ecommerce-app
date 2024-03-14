import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/common/styles/text_string.dart';
import 'package:rent_onway/features/authentication/screens/password_config/reset_password.dart';
import 'package:rent_onway/utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(ThSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(Thtexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ThSize.spaceBtwSections),
            Text(Thtexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: ThSize.spaceBtwSections *2 ),
            
            //Textfeild
            TextFormField(
              decoration: const InputDecoration(
                labelText: Thtexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: ThSize.spaceBtwSections  ),

            //Submit Buttton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(Thtexts.submit),
              ),
            ),


          ],
        ),
        ),
    );
  }
}