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
    apiKey: 'AIzaSyDNjOzvRz-1vp6sFA83QcCfsmWqP7y1tIc',
    appId: '1:523188111222:web:1d682ad1b4ae13a0d51c57',
    messagingSenderId: '523188111222',
    projectId: 'cp23at2-bf28d',
    authDomain: 'cp23at2-bf28d.firebaseapp.com',
    storageBucket: 'cp23at2-bf28d.appspot.com',
    measurementId: 'G-R6RTPHK3NG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPBm8m0wCVkiI4n2sPhqKMZWlIgqiLqV4',
    appId: '1:523188111222:android:557860038aa482d6d51c57',
    messagingSenderId: '523188111222',
    projectId: 'cp23at2-bf28d',
    storageBucket: 'cp23at2-bf28d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVwiHvUEcfSRbZEm_H1EaaWqw9yY_15mE',
    appId: '1:523188111222:ios:759f980da0dd225ed51c57',
    messagingSenderId: '523188111222',
    projectId: 'cp23at2-bf28d',
    storageBucket: 'cp23at2-bf28d.appspot.com',
    iosBundleId: 'com.example.flutterMainProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVwiHvUEcfSRbZEm_H1EaaWqw9yY_15mE',
    appId: '1:523188111222:ios:96492bfad499521fd51c57',
    messagingSenderId: '523188111222',
    projectId: 'cp23at2-bf28d',
    storageBucket: 'cp23at2-bf28d.appspot.com',
    iosBundleId: 'com.example.flutterMainProject.RunnerTests',
  );
}
