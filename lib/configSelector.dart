
import 'enum.dart';
import 'firebase_options_dev.dart' as dev;
import 'firebase_options_prod.dart' as prod;
import 'firebase_options_qa.dart' as qa;
import 'package:firebase_core/firebase_core.dart';

FirebaseOptions getFirebaseOptions(Environment env) {
  switch (env) {
    case Environment.dev:
      return dev.DefaultFirebaseOptions.currentPlatform;
    case Environment.prod:
      return prod.DefaultFirebaseOptions.currentPlatform;
    case Environment.qa:
      return qa.DefaultFirebaseOptions.currentPlatform;
  }
}