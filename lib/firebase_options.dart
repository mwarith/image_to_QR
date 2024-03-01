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
    apiKey: 'AIzaSyBRT78vPiJv7DqwsMNjdkHLKEDY_KE58q8',
    appId: '1:929705718948:web:c7bc43abda7324b533a231',
    messagingSenderId: '929705718948',
    projectId: 'image-to-qr-e355b',
    authDomain: 'image-to-qr-e355b.firebaseapp.com',
    storageBucket: 'image-to-qr-e355b.appspot.com',
    measurementId: 'G-31PWRBXGNP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVG0oJAJUUyoPJEfGpoLqq0cTB6bEDK-o',
    appId: '1:929705718948:android:17760e6cd42151b533a231',
    messagingSenderId: '929705718948',
    projectId: 'image-to-qr-e355b',
    storageBucket: 'image-to-qr-e355b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPW7TuHxNmk7asS5wFjXc1Y16zRVJ_wOs',
    appId: '1:929705718948:ios:c219cd846a57624333a231',
    messagingSenderId: '929705718948',
    projectId: 'image-to-qr-e355b',
    storageBucket: 'image-to-qr-e355b.appspot.com',
    iosBundleId: 'com.example.imageToQr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPW7TuHxNmk7asS5wFjXc1Y16zRVJ_wOs',
    appId: '1:929705718948:ios:368f5e5fc43f054033a231',
    messagingSenderId: '929705718948',
    projectId: 'image-to-qr-e355b',
    storageBucket: 'image-to-qr-e355b.appspot.com',
    iosBundleId: 'com.example.imageToQr.RunnerTests',
  );
}