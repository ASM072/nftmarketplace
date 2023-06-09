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
    apiKey: 'AIzaSyBxV-8cCEBIWvF06KHI0FytnWMYIccn5iw',
    appId: '1:132992465244:web:e538d3f0c5fb9d9505a999',
    messagingSenderId: '132992465244',
    projectId: 'nftmarketplace-072',
    authDomain: 'nftmarketplace-072.firebaseapp.com',
    databaseURL: 'https://nftmarketplace-072-default-rtdb.firebaseio.com',
    storageBucket: 'nftmarketplace-072.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8DM9i41aQUcLKDO15Rzm5Yff1rt0AMRE',
    appId: '1:132992465244:android:9d938e38af70cd1505a999',
    messagingSenderId: '132992465244',
    projectId: 'nftmarketplace-072',
    databaseURL: 'https://nftmarketplace-072-default-rtdb.firebaseio.com',
    storageBucket: 'nftmarketplace-072.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWMQzXcxfmIQU1gL_9jXnXsOVXNi4NyUs',
    appId: '1:132992465244:ios:a1f71e71e1126f4905a999',
    messagingSenderId: '132992465244',
    projectId: 'nftmarketplace-072',
    databaseURL: 'https://nftmarketplace-072-default-rtdb.firebaseio.com',
    storageBucket: 'nftmarketplace-072.appspot.com',
    iosClientId: '132992465244-j4fkanepmf7n9tlb73gec6r40ttntfdf.apps.googleusercontent.com',
    iosBundleId: 'com.example.nftmarketplace',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWMQzXcxfmIQU1gL_9jXnXsOVXNi4NyUs',
    appId: '1:132992465244:ios:a1f71e71e1126f4905a999',
    messagingSenderId: '132992465244',
    projectId: 'nftmarketplace-072',
    databaseURL: 'https://nftmarketplace-072-default-rtdb.firebaseio.com',
    storageBucket: 'nftmarketplace-072.appspot.com',
    iosClientId: '132992465244-j4fkanepmf7n9tlb73gec6r40ttntfdf.apps.googleusercontent.com',
    iosBundleId: 'com.example.nftmarketplace',
  );
}