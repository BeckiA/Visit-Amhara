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
    apiKey: 'AIzaSyD6Zp08WbTVbCwlYQd2rvHjWJNDHfrxtTA',
    appId: '1:166015026460:web:80db1da7b19ad783fbe6d9',
    messagingSenderId: '166015026460',
    projectId: 'visit-amhara-login',
    authDomain: 'visit-amhara-login.firebaseapp.com',
    storageBucket: 'visit-amhara-login.appspot.com',
    measurementId: 'G-KJMKN8TB3D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoH1sxR4XdMcvQmF8gJsCX9jYEFP6YOsU',
    appId: '1:166015026460:android:c1b7d93e5bf06fb2fbe6d9',
    messagingSenderId: '166015026460',
    projectId: 'visit-amhara-login',
    storageBucket: 'visit-amhara-login.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFJg7r_nJ_KxQdsCeY7eVPR8CW057daew',
    appId: '1:166015026460:ios:789467d4e9a92847fbe6d9',
    messagingSenderId: '166015026460',
    projectId: 'visit-amhara-login',
    storageBucket: 'visit-amhara-login.appspot.com',
    androidClientId: '166015026460-1hrjdivv1rqktj0eisu5t9eqjq4ch057.apps.googleusercontent.com',
    iosClientId: '166015026460-kvc7smacp4amhe5q24fkbknp8h3rkp8v.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFJg7r_nJ_KxQdsCeY7eVPR8CW057daew',
    appId: '1:166015026460:ios:789467d4e9a92847fbe6d9',
    messagingSenderId: '166015026460',
    projectId: 'visit-amhara-login',
    storageBucket: 'visit-amhara-login.appspot.com',
    androidClientId: '166015026460-1hrjdivv1rqktj0eisu5t9eqjq4ch057.apps.googleusercontent.com',
    iosClientId: '166015026460-kvc7smacp4amhe5q24fkbknp8h3rkp8v.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );
}
