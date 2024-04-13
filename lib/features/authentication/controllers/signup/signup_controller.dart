
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rent_onway/data/repositories/authentication/authentication_repository.dart';
import 'package:rent_onway/data/repositories/user/user_model.dart';
import 'package:rent_onway/data/repositories/user/user_repository.dart';
import 'package:rent_onway/features/authentication/controllers/signup/network_manager.dart';
import 'package:rent_onway/features/authentication/screens/signup/verify_email.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/popups/fullscreen_loader.dart';
import 'package:rent_onway/utils/popups/loaders.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  //Variables
  final hidePassword = true.obs; //Observable for hiding and sowing password
  final privacyPolicy = true.obs; // observable for Privacy Policy Acceptance
  final email = TextEditingController(); // control email input
    final firstName = TextEditingController(); // control first name input
      final lastName = TextEditingController(); // control last name input
        final username = TextEditingController(); // control username input
          final password = TextEditingController(); // control password input
            final phoneNo = TextEditingController(); // control phone number input
            GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //Form key for Form Variable

  //SIGNUP
  void signup() async{
    try{

      //start loading
      ThFullScreenLoader.openLoadingDialog('We are processing your details...', ThImages.docerAnimation);

      //Check Internet
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        return;
      }

      //Form Validation
      if(!signupFormKey.currentState!.validate()){
        return;
      }

      //privacy Policy Check
      if(!privacyPolicy.value){
        ThLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'You must have to accept the Privacy Policy and Terms of Use',
        );
      }

      //Register user in firebase auth and save user data in firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      //save auth user data in firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
         lastName: lastName.text.trim(),
         username: username.text.trim(),
         email: email.text.trim(),
         phoneNo:phoneNo.text.trim(),
         profilePicture: '',
          
      );
       final userRepository = Get.put(UserRepository());
        await userRepository.saveUserRecord(newUser);

      
      // Remove loader
      ThFullScreenLoader.stopLoading();

      //show Success Message
        ThLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! Verify email to continue.');

        //Move to Verify Email Screen
        Get.to(() => const VerifyEmailScreen());
  }catch (e){
    //Remove loader
        ThFullScreenLoader.stopLoading();

      //Show some generic error to the user
    ThLoaders.errorSnackBar(title:'Oh Sorry !', message: e.toString()); 
    }finally{
      //remove user
      ThFullScreenLoader.stopLoading();
    }
  }
}  