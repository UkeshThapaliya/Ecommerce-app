import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/features/authentication/controllers/signup/signup_controller.dart';
import 'package:rent_onway/features/authentication/screens/signup/verify_email.dart';
import 'package:rent_onway/features/authentication/screens/signup/widgets/termcondition_checkbox.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/constants/text_string.dart';
import 'package:rent_onway/utils/validator/validation.dart';

class ThSignupForm extends StatelessWidget {
   const ThSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
      children: [
        // First and Last name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller.firstName,
                validator: (value) => Thvalidator.validateEmptyText('firstName', value),
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
                validator: (value) => Thvalidator.validateEmptyText('lastName', value),
                controller: controller.lastName,
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
          validator: (value) => Thvalidator.validateEmptyText('username', value),
          controller: controller.username,
          expands: false,
          decoration: const InputDecoration(labelText: Thtexts.username,prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Email
        TextFormField(
          validator: (value) => Thvalidator.validateEmail(value),
          controller: controller.email,
          decoration: const InputDecoration(labelText: Thtexts.email,prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Phone number
        TextFormField(
          validator: (value) => Thvalidator.validatePhoneNumber(value),
          controller: controller.phoneNo,
          decoration: const InputDecoration(labelText: Thtexts.phoneNo,prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: ThSize.spaceBtwInputField),
    
        //Password
        Obx(
        () => TextFormField(
            validator: (value) => Thvalidator.validatePassword(value),
            controller: controller.password,
            obscureText: controller.hidePassword.value,
            decoration: InputDecoration(labelText: Thtexts.password,
            prefixIcon: const Icon(Iconsax.password_check),
             suffix: IconButton(
              onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
              icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash: Iconsax.eye),
              ),
              ),
          ),
        ),
        const SizedBox(height: ThSize.spaceBtwSections),
    
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

