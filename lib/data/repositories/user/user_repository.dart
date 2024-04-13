
//Repository class for user related operation
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rent_onway/data/repositories/user/user_model.dart';
import 'package:rent_onway/utils/exceptions/firebase_auth_exception.dart';
import 'package:rent_onway/utils/exceptions/format_exception.dart';
import 'package:rent_onway/utils/exceptions/platform_exception.dart';



class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //Function to save user data to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    }on FirebaseException catch (e){
      throw ThFirebaseAuthException(e.code).message;
    }on FormatException catch(_){
      throw const ThFormatException();
    }on PlatformException catch (e){
      throw ThPlatformException(e.code).message;
    }catch (e){
      throw 'Something went wrong. Please try again';
    }
  }


  //Function to fetch user details based on user id
}