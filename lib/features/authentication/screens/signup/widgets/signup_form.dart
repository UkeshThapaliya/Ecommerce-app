import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/features/authentication/screens/signup/verify_email.dart';
import 'package:rent_onway/features/authentication/screens/signup/widgets/termcondition_checkbox.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/constants/text_string.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';

class ThSignupForm extends StatelessWidget {
   const ThSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThHelperFun.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: Thtexts.firstName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
            const SizedBox(width:ThSize.spaceBtwInputField),
             Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: Thtexts.lastName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
        
        //Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: Thtexts.username,prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Email
        TextFormField(
          decoration: const InputDecoration(labelText: Thtexts.email,prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Phone number
        TextFormField(
          decoration: const InputDecoration(labelText: Thtexts.phoneNo,prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(labelText: Thtexts.password,prefixIcon: Icon(Iconsax.password_check), suffix: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Term and Condition
        const ThTermConditionCheckbox(),
        const SizedBox(height: ThSize.spaceBtwSections),
    
    //Sign Up button
    SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed:() => Get.to(() => const VerifyEmailScreen()),
       child:const Text(Thtexts.createAccount) ),
    ),
    
      ],
      )
      );
  }
}

