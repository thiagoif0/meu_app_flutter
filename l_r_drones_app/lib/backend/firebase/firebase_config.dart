import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD7b9o1eaEUGyOpwbWUdKa3MogUVKfAqFM",
            authDomain: "lrdronesapp.firebaseapp.com",
            projectId: "lrdronesapp",
            storageBucket: "lrdronesapp.firebasestorage.app",
            messagingSenderId: "39659599399",
            appId: "1:39659599399:web:1c93996362a88fa66e4002"));
  } else {
    await Firebase.initializeApp();
  }
}
