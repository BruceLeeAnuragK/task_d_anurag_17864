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
    apiKey: 'AIzaSyCVxe9EINeASHPBMdFqioIT86aSH9LH4C0',
    appId: '1:1050013208523:web:5aaff6e9c36635c954704e',
    messagingSenderId: '1050013208523',
    projectId: 're-pr2-anurag-1786',
    authDomain: 're-pr2-anurag-1786.firebaseapp.com',
    storageBucket: 're-pr2-anurag-1786.appspot.com',
    measurementId: 'G-019YLHYHF1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJKrPSsYEs4VetCzauJfNi0I_CnOh1m3k',
    appId: '1:1050013208523:android:c345c0a89b9c71c554704e',
    messagingSenderId: '1050013208523',
    projectId: 're-pr2-anurag-1786',
    storageBucket: 're-pr2-anurag-1786.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQVtNhseJeyIkAVosjaEaFFrCG4tyi_XA',
    appId: '1:1050013208523:ios:0f3fb966cea0ce7554704e',
    messagingSenderId: '1050013208523',
    projectId: 're-pr2-anurag-1786',
    storageBucket: 're-pr2-anurag-1786.appspot.com',
    iosBundleId: 'com.example.taskDAnurag17864',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQVtNhseJeyIkAVosjaEaFFrCG4tyi_XA',
    appId: '1:1050013208523:ios:33ae91a3209909f954704e',
    messagingSenderId: '1050013208523',
    projectId: 're-pr2-anurag-1786',
    storageBucket: 're-pr2-anurag-1786.appspot.com',
    iosBundleId: 'com.example.taskDAnurag17864.RunnerTests',
  );
}
