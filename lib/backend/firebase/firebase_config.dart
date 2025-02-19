import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAFRhIVVwNduZNe6VCSZ3bH7CtK_XcVd98",
            authDomain: "fairshare-c45fe.firebaseapp.com",
            projectId: "fairshare-c45fe",
            storageBucket: "fairshare-c45fe.firebasestorage.app",
            messagingSenderId: "831418097637",
            appId: "1:831418097637:web:e784f776aa318288c2d90c",
            measurementId: "G-KCFQGYR478"));
  } else {
    await Firebase.initializeApp();
  }
}
