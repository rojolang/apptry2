import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAFLhvIfHk0vHd04mAEPZZ3_QarEFJLXS0",
            authDomain: "rob-dev-oct28-327h10.firebaseapp.com",
            projectId: "rob-dev-oct28-327h10",
            storageBucket: "rob-dev-oct28-327h10.appspot.com",
            messagingSenderId: "252326320556",
            appId: "1:252326320556:web:1080f40b9d36d285db4209"));
  } else {
    await Firebase.initializeApp();
  }
}
