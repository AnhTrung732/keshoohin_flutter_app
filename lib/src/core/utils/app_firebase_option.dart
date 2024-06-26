import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError('Firebase options have not been configured for the web.');
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError('Firebase options are not supported for this platform.');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApTGEfRFTwFun0nHFUW90tMoQFgMeFIsA',
    appId: '1:1017087612348:android:f8776486b78075591107b9',
    messagingSenderId: '924177322936',
    projectId: 'keshoohin-flutter-app',
    storageBucket: 'keshoohin-mobile-app-1ea8b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'your_ios_api_key',
    appId: 'your_ios_app_id',
    messagingSenderId: 'your_ios_messaging_sender_id',
    projectId: 'your_ios_project_id',
    storageBucket: 'your_ios_storage_bucket',
    iosClientId: 'your_ios_client_id',
    iosBundleId: 'your_ios_bundle_id',
  );
}
