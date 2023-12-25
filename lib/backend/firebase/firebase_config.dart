import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCoota1ks64EzABu3TQL_iPeAMTRD88zrw",
            authDomain: "scale-20criv.firebaseapp.com",
            projectId: "scale-20criv",
            storageBucket: "scale-20criv.appspot.com",
            messagingSenderId: "455464277028",
            appId: "1:455464277028:web:9ea4a9674eba4a4a32b4b1"));
  } else {
    await Firebase.initializeApp();
  }
}
