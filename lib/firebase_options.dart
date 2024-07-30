// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAhGhpp-JoeyXyWL4MX39R5sLikHjkVew0',
    appId: '1:270823573439:web:68159172d49fe50ed7030a',
    messagingSenderId: '270823573439',
    projectId: 'shopsphere-e201d',
    authDomain: 'shopsphere-e201d.firebaseapp.com',
    storageBucket: 'shopsphere-e201d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWZiZuMCRJ1zgytBLxil3asd-TR3tNLjM',
    appId: '1:270823573439:android:9e51f54c8c2e7674d7030a',
    messagingSenderId: '270823573439',
    projectId: 'shopsphere-e201d',
    storageBucket: 'shopsphere-e201d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3H1fH9S4HzVogU5_m5AczWxUukYrR4B0',
    appId: '1:270823573439:ios:e1404c8e468b769bd7030a',
    messagingSenderId: '270823573439',
    projectId: 'shopsphere-e201d',
    storageBucket: 'shopsphere-e201d.appspot.com',
    androidClientId: '270823573439-22u2v1ng9ugpuqq742p08u9e55pp5jmu.apps.googleusercontent.com',
    iosClientId: '270823573439-vbg22akt42cf4slu1h6e1gbuafusiui1.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopsphere',
  );

}