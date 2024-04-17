// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCv0sYOUWZrF_2eU1xojFglnTKsMLHRGxo',
    appId: '1:892615762929:web:8457bf9eedae2b0b6bda50',
    messagingSenderId: '892615762929',
    projectId: 'rentonway-b64ff',
    authDomain: 'rentonway-b64ff.firebaseapp.com',
    storageBucket: 'rentonway-b64ff.appspot.com',
    measurementId: 'G-9T9P1S76DX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrv7WrDWqDhEPBAsOBax2XldCRsLq4-wg',
    appId: '1:892615762929:android:25fad27276e603d46bda50',
    messagingSenderId: '892615762929',
    projectId: 'rentonway-b64ff',
    storageBucket: 'rentonway-b64ff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkJbyTKPv0pQGKyJ40aIp_boQ8hhWT8N8',
    appId: '1:892615762929:ios:9b9b623297a5a0c86bda50',
    messagingSenderId: '892615762929',
    projectId: 'rentonway-b64ff',
    storageBucket: 'rentonway-b64ff.appspot.com',
    androidClientId: '892615762929-1o6k13ur27iv5mmg9ue18tammlpjrrfc.apps.googleusercontent.com',
    iosClientId: '892615762929-88sdudnp1bmg72biggljjv2mckioau69.apps.googleusercontent.com',
    iosBundleId: 'com.example.rentOnway',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkJbyTKPv0pQGKyJ40aIp_boQ8hhWT8N8',
    appId: '1:892615762929:ios:c6f0b7449050cb946bda50',
    messagingSenderId: '892615762929',
    projectId: 'rentonway-b64ff',
    storageBucket: 'rentonway-b64ff.appspot.com',
    androidClientId: '892615762929-1o6k13ur27iv5mmg9ue18tammlpjrrfc.apps.googleusercontent.com',
    iosClientId: '892615762929-ecbs7p8tsotr621vrm11t2r10ubdbq2f.apps.googleusercontent.com',
    iosBundleId: 'com.example.rentOnway.RunnerTests',
  );
}
