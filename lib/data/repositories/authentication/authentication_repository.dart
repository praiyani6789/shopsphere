import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopsphere/features/authentication/screens/loging/login.dart';
import 'package:shopsphere/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //Called from main.dart on  app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //Fucn to Show Relevant Screen
  screenRedirect() async {
    //Locat Storage
    deviceStorage.writeIfNull('isFirstTime', true);
    //check if it's first time launch app
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  /*------------------------------ Email & pass Sign-in ----------------------------*/

  //REGISTER
  Future<UserCredential> registerWithEmailAndPassword(String email,String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      throw 'Something went wrong. Please try again';
    }
    // on FirebaseAuthException catch(e){
    //   throw SFirebaseAuthException(e.code).message;
    // }on FirebaseException catch(e){
    //   throw SFirebaseException(e.code).message;
    // }on FormatException catch(_){
    //   throw SFormatException();
    // }on PlatformException catch(e){
    //   throw SPlatformException(e.code).message;
    // }
  }
}
