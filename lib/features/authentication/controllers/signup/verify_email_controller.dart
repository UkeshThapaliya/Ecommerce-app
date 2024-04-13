import 'package:get/get.dart';
import 'package:rent_onway/data/repositories/authentication/authentication_repository.dart';
import 'package:rent_onway/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController{
  static  VerifyEmailController get instance => Get.find();

  //Send Email Whenever verify email screen appear and also set timer for auto redirect
  @override
  void onInit(){
    sendEmailVerification();
    super.onInit();
  }

  //Send Email Verification Link
  sendEmailVerification() async {
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      ThLoaders.successSnackBar(title: 'Email Sent', message: 'Please Check your inbox and verify your email');
    } catch(e) {
      ThLoaders.errorSnackBar(title: 'Oops!', message: e.toString());
    }
    }
     
  }

  //Timer to auto redirect

  // manually check if email verified
