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
    apiKey: 'AIzaSyAwd5dX4m8FTd8JnX79iRKemOFjrcGB2j0',
    appId: '1:648146506133:web:977ccc11f41acd810ba69c',
    messagingSenderId: '648146506133',
    projectId: 'bluebird-software-web',
    authDomain: 'bluebird-software-web.firebaseapp.com',
    storageBucket: 'bluebird-software-web.appspot.com',
    measurementId: 'G-DJC8KP7P38',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmv2VXUw-HW-9VA0Gv-6UtP5u3g5LMNgE',
    appId: '1:648146506133:android:824ccf212362e7b70ba69c',
    messagingSenderId: '648146506133',
    projectId: 'bluebird-software-web',
    storageBucket: 'bluebird-software-web.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZTBHcyr4NJjuUQiCacxAO3n8HRJUPJ4w',
    appId: '1:648146506133:ios:6c8b835a5d86f8100ba69c',
    messagingSenderId: '648146506133',
    projectId: 'bluebird-software-web',
    storageBucket: 'bluebird-software-web.appspot.com',
    iosBundleId: 'com.example.bluebirdsoftware',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZTBHcyr4NJjuUQiCacxAO3n8HRJUPJ4w',
    appId: '1:648146506133:ios:2cb3b90e3d028bff0ba69c',
    messagingSenderId: '648146506133',
    projectId: 'bluebird-software-web',
    storageBucket: 'bluebird-software-web.appspot.com',
    iosBundleId: 'com.example.bluebirdsoftware.RunnerTests',
  );
}
