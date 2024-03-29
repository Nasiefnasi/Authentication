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
    apiKey: 'AIzaSyC6HKfXbhimxqAEhABEWs57ZOl0Yfnr5kU',
    appId: '1:668953082539:web:31e247bc718b925e4e55ee',
    messagingSenderId: '668953082539',
    projectId: 'machinetask-a8899',
    authDomain: 'machinetask-a8899.firebaseapp.com',
    storageBucket: 'machinetask-a8899.appspot.com',
    measurementId: 'G-FKQCXH9EQZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwvKOYqCYeXvFNAHVUAqSFJxG0HgjeCvc',
    appId: '1:668953082539:android:660c7db784f2203f4e55ee',
    messagingSenderId: '668953082539',
    projectId: 'machinetask-a8899',
    storageBucket: 'machinetask-a8899.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5kF9H1eBdh5PgfWg_LUp43kIWqnER5AI',
    appId: '1:668953082539:ios:534c8c5f1014660f4e55ee',
    messagingSenderId: '668953082539',
    projectId: 'machinetask-a8899',
    storageBucket: 'machinetask-a8899.appspot.com',
    iosBundleId: 'com.example.companytask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5kF9H1eBdh5PgfWg_LUp43kIWqnER5AI',
    appId: '1:668953082539:ios:fdcc9b5c3331fdb14e55ee',
    messagingSenderId: '668953082539',
    projectId: 'machinetask-a8899',
    storageBucket: 'machinetask-a8899.appspot.com',
    iosBundleId: 'com.example.companytask.RunnerTests',
  );
}
