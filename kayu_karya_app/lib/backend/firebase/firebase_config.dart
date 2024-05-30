import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDBZB_P5WPDTP8OSmxIyB2kiKH1GRUWnzY",
            authDomain: "kayukaryaapp.firebaseapp.com",
            projectId: "kayukaryaapp",
            storageBucket: "kayukaryaapp.appspot.com",
            messagingSenderId: "162774085299",
            appId: "1:162774085299:web:185d777b496076e4a6cac6"));
  } else {
    await Firebase.initializeApp();
  }
}
