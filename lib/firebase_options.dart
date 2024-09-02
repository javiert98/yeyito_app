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
    apiKey: 'AIzaSyCmWzp8gQFFUBIuv2G7yMJzS2vmLH-B8uc',
    appId: '1:998045758271:web:89c4f726a018f3859b598a',
    messagingSenderId: '998045758271',
    projectId: 'yeyito-app',
    authDomain: 'yeyito-app.firebaseapp.com',
    storageBucket: 'yeyito-app.appspot.com',
    measurementId: 'G-KR5WLV24P2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApVzuSlOwbA-xKI0pFYCOetbmw89zbShU',
    appId: '1:998045758271:android:56075c6aa988078e9b598a',
    messagingSenderId: '998045758271',
    projectId: 'yeyito-app',
    storageBucket: 'yeyito-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHSMyTDIfRfCCGn8VWAF5XNhDQT8qVKeA',
    appId: '1:998045758271:ios:66b4db09cae4e61d9b598a',
    messagingSenderId: '998045758271',
    projectId: 'yeyito-app',
    storageBucket: 'yeyito-app.appspot.com',
    iosBundleId: 'com.yeyito.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHSMyTDIfRfCCGn8VWAF5XNhDQT8qVKeA',
    appId: '1:998045758271:ios:faaf855aaade206d9b598a',
    messagingSenderId: '998045758271',
    projectId: 'yeyito-app',
    storageBucket: 'yeyito-app.appspot.com',
    iosBundleId: 'com.yeyito.app.RunnerTests',
  );
}