
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rent_onway/features/authentication/screens/login/login.dart';
import 'package:rent_onway/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //Variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //Called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //Function to show specific screen
  screenRedirect()async{
    //local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    //check if its the first time launching the app

    deviceStorage.read('IsFirstTime') != true ? 
    Get.offAll(() => const LoginScreen()) //If not the first time,Redirect to loginScreen 
    : Get.offAll(const OnBoardingScreen()); //If its first time, Redirect to Onnoarding Screen

  }

  /*---Email and Password Sign in--- */

  //Email Authentication- Sign In

  //Email Authentication- Register
  Future<UserCredential> registerWithEmailAndPAssword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      throw ThFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw ThFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw ThFormaException();
    }on PlatformException catch (e){
      throw ThPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong, please try again';
    }
  }

  


  //ReAuthenticate- ReAutenticate User

  //Email Verification- Mail Verification

  //EmailAuthentication- Forget Password

   /*---Social Sign in--- */
   //Google Auth - Google

   /*---end of Social Sign in--- */

   //Logout user  - valid for any authentication
   //Deleted User - Remove user auth and firestore Account
}