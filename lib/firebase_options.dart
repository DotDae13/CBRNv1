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
    apiKey: 'AIzaSyDhg5WDYGzWEBAYP-UxtRFCrbzvvyMBFWc',
    appId: '1:369180220947:web:1d3c56e413059b7fb1e9e6',
    messagingSenderId: '369180220947',
    projectId: 'sih2023-f638d',
    authDomain: 'sih2023-f638d.firebaseapp.com',
    databaseURL: 'https://sih2023-f638d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sih2023-f638d.appspot.com',
    measurementId: 'G-NBMPT4LB4B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBO4XLp118K1L9Jyx6FGlsTY7hIQ0KIIJY',
    appId: '1:369180220947:android:1f85e9f330f08f7cb1e9e6',
    messagingSenderId: '369180220947',
    projectId: 'sih2023-f638d',
    databaseURL: 'https://sih2023-f638d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sih2023-f638d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMIjhBNDcxoqgKCEiX9tbtDnABAQRlEGI',
    appId: '1:369180220947:ios:bb2b88e846e29181b1e9e6',
    messagingSenderId: '369180220947',
    projectId: 'sih2023-f638d',
    databaseURL: 'https://sih2023-f638d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sih2023-f638d.appspot.com',
    iosBundleId: 'com.example.progresssystemSplashscreen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMIjhBNDcxoqgKCEiX9tbtDnABAQRlEGI',
    appId: '1:369180220947:ios:110b47aff79410c3b1e9e6',
    messagingSenderId: '369180220947',
    projectId: 'sih2023-f638d',
    databaseURL: 'https://sih2023-f638d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sih2023-f638d.appspot.com',
    iosBundleId: 'com.example.progresssystemSplashscreen.RunnerTests',
  );
}
