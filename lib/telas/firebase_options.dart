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
    apiKey: 'AIzaSyDZCkbGupRL4QzWYurc9RhuVeWq82KevJg',
    appId: '1:199721165508:web:a5573b623cc06cd519df91',
    messagingSenderId: '199721165508',
    projectId: 'login-53052',
    authDomain: 'login-53052.firebaseapp.com',
    storageBucket: 'login-53052.appspot.com',
    measurementId: 'G-V4Y5Q03H1T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7t0T1IsLQaen1u4zYc3XGBur6qR_aJ-Y',
    appId: '1:199721165508:android:51ad8b8492c46e1419df91',
    messagingSenderId: '199721165508',
    projectId: 'login-53052',
    storageBucket: 'login-53052.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCm97Rzy0NSnEEvvE5C-wHe-QLN-hXWHIQ',
    appId: '1:199721165508:ios:a25ed398d4c2fbca19df91',
    messagingSenderId: '199721165508',
    projectId: 'login-53052',
    storageBucket: 'login-53052.appspot.com',
    iosBundleId: 'com.example.flutterApplication1Flutterdemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCm97Rzy0NSnEEvvE5C-wHe-QLN-hXWHIQ',
    appId: '1:199721165508:ios:ca29bdb4b7fd83ba19df91',
    messagingSenderId: '199721165508',
    projectId: 'login-53052',
    storageBucket: 'login-53052.appspot.com',
    iosBundleId: 'com.example.flutterApplication1Flutterdemo.RunnerTests',
  );
}
