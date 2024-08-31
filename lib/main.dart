import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopsphere/app.dart';
import 'package:shopsphere/data/repositories/authentication/authentication_repository.dart';
import 'package:shopsphere/data/repositories/user/user_repository.dart';
import 'package:shopsphere/firebase_options.dart';

Future<void> main() async {
  //Widget Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  //GetX Local Storage
  await GetStorage.init();

  //Await splash untill other items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase & repositories
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) {
      Get.put(AuthenticationRepository());
      Get.put(UserRepository());
    },
  );
  runApp(const App());
}
