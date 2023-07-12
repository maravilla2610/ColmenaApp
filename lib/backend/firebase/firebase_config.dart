import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCw16CxA3iVeSdpn4N_5FYG09q62-A6EuM",
            authDomain: "colmena-d4b91.firebaseapp.com",
            projectId: "colmena-d4b91",
            storageBucket: "colmena-d4b91.appspot.com",
            messagingSenderId: "971668544730",
            appId: "1:971668544730:web:7888eecf3e094fdfee59e3",
            measurementId: "G-M8TLZG7B32"));
  } else {
    await Firebase.initializeApp();
  }
}
