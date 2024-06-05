import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/widgets/success_screen/success_screen.dart';
import 'package:rent_onway/data/repositories/authentication/authentication_repository.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/text_string.dart';
import 'package:rent_onway/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  //Send Email Whenever verify email screen appear and also set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  //Send Email Verification Link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      ThLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please Check your inbox and verify your email');
    } catch (e) {
      ThLoaders.errorSnackBar(title: 'Oops!', message: e.toString());
    }
  }

  checkEmailVerificationStatus() {}
}

//Timer to auto redirect on email verification
setTimerForAutoRedirect() {
  Timer.periodic(
    const Duration(seconds: 1),
    (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: ThImages.staticSuccessIllu,
            title: Thtexts.yourAccountCreatedTitle,
            subTitle: Thtexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    },
  );
}

// manually check if email verified
checkEmailverificationStatus() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null && currentUser.emailVerified) {
    Get.off(
      () => SuccessScreen(
        image: ThImages.staticSuccessIllu,
        title: Thtexts.yourAccountCreatedTitle,
        subTitle: Thtexts.yourAccountCreatedSubTitle,
        onPressed: () => AuthenticationRepository.instance.screenRedirect(),
      ),
    );
  }
}
