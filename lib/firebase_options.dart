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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAdsS8hrI1bVVqrTp3mgf-_x1T59XOQiMo',
    appId: '1:794902240867:web:79c85d480acac30869a256',
    messagingSenderId: '794902240867',
    projectId: 'chatapp-5c500',
    authDomain: 'chatapp-5c500.firebaseapp.com',
    storageBucket: 'chatapp-5c500.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe34oPJrpAS6AGB9XzVJDrfwyQShiCPgI',
    appId: '1:794902240867:android:c2f4d1926a2b49be69a256',
    messagingSenderId: '794902240867',
    projectId: 'chatapp-5c500',
    storageBucket: 'chatapp-5c500.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6psq0SBPwoioLfejCwpyRZM0vpunjHyU',
    appId: '1:794902240867:ios:39481d23a47bde7e69a256',
    messagingSenderId: '794902240867',
    projectId: 'chatapp-5c500',
    storageBucket: 'chatapp-5c500.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6psq0SBPwoioLfejCwpyRZM0vpunjHyU',
    appId: '1:794902240867:ios:39481d23a47bde7e69a256',
    messagingSenderId: '794902240867',
    projectId: 'chatapp-5c500',
    storageBucket: 'chatapp-5c500.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdsS8hrI1bVVqrTp3mgf-_x1T59XOQiMo',
    appId: '1:794902240867:web:c4d51a1a38a72d3c69a256',
    messagingSenderId: '794902240867',
    projectId: 'chatapp-5c500',
    authDomain: 'chatapp-5c500.firebaseapp.com',
    storageBucket: 'chatapp-5c500.appspot.com',
  );
}
