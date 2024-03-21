import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rent_onway/firebase_options.dart';
import 'package:rent_onway/rent_app.dart';

import 'data/repositories/authentication/authentication_repository.dart';

Future<void> main() async {
// Add Widgwt Binding
final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
// GetX Local Storage
await GetStorage.init();
// Await native Splash untill other items load
FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
// Todo: Initialize Firebase
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
  (FirebaseApp value) => Get.put(AuthenticationRepository()));
// Todo: Authentication

 runApp(const RentApp());
}