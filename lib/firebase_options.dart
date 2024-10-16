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
    apiKey: 'AIzaSyD906q52Aohm0NakU0uvSaVuksOGMyZQnM',
    appId: '1:170624757778:web:fc54182b1ee199e43928cb',
    messagingSenderId: '170624757778',
    projectId: 'vedio-calling-422f0',
    authDomain: 'vedio-calling-422f0.firebaseapp.com',
    storageBucket: 'vedio-calling-422f0.appspot.com',
    measurementId: 'G-80YWFBWJ2L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsRaWeqxZvqmGxd8f8DiZfyL-mFs5uavM',
    appId: '1:170624757778:android:92f53ff6191616773928cb',
    messagingSenderId: '170624757778',
    projectId: 'vedio-calling-422f0',
    storageBucket: 'vedio-calling-422f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYurap0uKp7VsiQdZ07I_oU4pcfVVL3F4',
    appId: '1:170624757778:ios:f3460d434d4436b73928cb',
    messagingSenderId: '170624757778',
    projectId: 'vedio-calling-422f0',
    storageBucket: 'vedio-calling-422f0.appspot.com',
    iosBundleId: 'com.example.vedioCall',
  );
}
