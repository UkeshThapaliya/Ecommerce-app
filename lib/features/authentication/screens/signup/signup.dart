
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/widgets/Login_Signup/form_divider.dart';
import 'package:rent_onway/common/widgets/Login_Signup/social_buttons.dart';
import 'package:rent_onway/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/constants/text_string.dart';


class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ThSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            // Title
            Text(Thtexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ThSize.spaceBtwSections),
            //Form
            const ThSignupForm(),
              const SizedBox(height: ThSize.spaceBtwSections),

              //Divider
              ThFormDivider(dividerText: Thtexts.orSignUpWith.capitalize!),
                 const SizedBox(height: ThSize.spaceBtwSections),

                 //Social Buttons
                 const ThSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}

