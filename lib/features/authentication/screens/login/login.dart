import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/common/styles/spacing_style.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/constants/text_string.dart';
import 'package:rent_onway/utils/helper/helper_fun.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ThHelperFun.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ThSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title and sub title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark? ThImages.lightAppLogo : ThImages.darkAppLogo),
                  ),
                  Text(Thtexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: ThSize.sm),
                  Text(Thtexts.loginSubTitle, style: Theme.of(context).textTheme.headlineMedium),
                ],

              ),

              //Auth Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: ThSize.spaceBtwSections),
                  child: Column(
                    children: [
                      //Email
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: Thtexts.email),
                      ),
                      const SizedBox(height: ThSize.spaceBtwInputField),
                  
                      //Password
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),
                        labelText: Thtexts.password, 
                        suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: ThSize.spaceBtwInputField /2),
                  
                    //Remember me and forget Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(Thtexts.rememberMe),
                          ],
                        ),
                        //Forget Password
                    TextButton(onPressed: (){}, child:const Text (Thtexts.forgetPassword) ),
                      ],
                    ),
                  
                    const SizedBox(height: ThSize.spaceBtwSections,),
                  
                    //sign in button
                   SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: (){}, child: const Text(Thtexts.signIn))),
                   const SizedBox(height: ThSize.spaceBtwItems),
                  
                    //Create Acc button
                    SizedBox(width: double.infinity,child:  OutlinedButton(onPressed: (){}, child: const Text(Thtexts.createAccount))),
            
                    ],
                    ),
                ),
              ),

              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: dark? ThColors.darkGrey: ThColors.grey,thickness: 0.5,indent: 60,endIndent: 5)),
                  Text(Thtexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium,),
                   Flexible(child: Divider(color: dark? ThColors.darkGrey: ThColors.grey,thickness: 0.5,indent: 60,endIndent: 5)),


                ],
              ),
              const SizedBox(height: ThSize.spaceBtwSections),

              //footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: ThColors.grey),borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Image(
                        width: ThSize.iconMd,
                        height: ThSize.iconMd,
                        image: AssetImage(ThImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: ThSize.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: ThColors.grey),borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Image(
                        width: ThSize.iconMd,
                        height: ThSize.iconMd,
                        image: AssetImage(ThImages.facebook),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ) ,
        ),
      ),
    );
  }
}