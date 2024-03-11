import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/styles/spacing_style.dart';
import 'package:rent_onway/common/widgets/Login_Signup/form_divider.dart';
import 'package:rent_onway/common/widgets/Login_Signup/social_buttons.dart';
import 'package:rent_onway/features/authentication/screens/login/widgets/login_form.dart';
import 'package:rent_onway/features/authentication/screens/login/widgets/login_header.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/constants/text_string.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ThSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title and sub title
               const ThLoginHeader(),

              //Login Form
              const ThLoginForm(),

              //Divider
               ThFormDivider(dividerText: Thtexts.orSignUpWith.capitalize!),
              const SizedBox(height: ThSize.spaceBtwSections),

              //footer with social button
              const ThSocialButtons()
            ],
          ) ,
        ),
      ),
    );
  }
}




