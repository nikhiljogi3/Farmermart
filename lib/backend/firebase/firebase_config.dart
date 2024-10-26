import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDYE4rDJPrhpD9uSKYln3Bu_QRF3Vrjzjk",
            authDomain: "farm-easy-ltmk31.firebaseapp.com",
            projectId: "farm-easy-ltmk31",
            storageBucket: "farm-easy-ltmk31.appspot.com",
            messagingSenderId: "783077728931",
            appId: "1:783077728931:web:7c484cf219bb51c8f29516"));
  } else {
    await Firebase.initializeApp();
  }
}
